import {createStore} from "redux";
import {List, Map} from "immutable";

import countdown from "../lib/countdown.ts";
import {schemeByName} from "../lib/schemes.ts";

let mastermindID = 0;
let villainGroupID = 0;
let henchmenGroupID = 0;

const mastermind = Map({id: mastermindID++, name: "Any Mastermind"});
const villainGroup = Map({id: villainGroupID++, name: "Any VillainGroup"});
const henchmenGroup = Map({id: henchmenGroupID++, name: "Any HenchmenGroup"});

const defaultState = Map({
  mode: "Advanced Solo Mode",
  scheme: "Unleash the Power of the Cosmic Cube",
  masterminds: List.of(mastermind),
  villainGroups: List.of(villainGroup),
  henchmenGroups: List.of(henchmenGroup),
  villainDeckContents: "8 Scheme Twists, 5 Master Strikes, 8 Villains, 3 Henchmen, 1 Bystander",
  turnsToEmpty: List.of(20, 21),
  maxWinningTurn: 19
});

// update counts of villains/henchmen etc based on mode and scheme
const updateCounts = (state) => {
  let mastermindCount = 1;

  let playerCount = 1;
  let villainGroupCount = 1;
  let henchmenGroupCount = 1;

  // mode
  switch (state.get("mode")) {
  case "Solo Mode":
    playerCount = 1;
    villainGroupCount = 1;
    henchmenGroupCount = 1;
    break;

  case "Advanced Solo Mode":
    playerCount = 1;
    villainGroupCount = 1;
    henchmenGroupCount = 1;
    break;

  case "Golden Solo Mode":
    playerCount = 1;
    villainGroupCount = 2;
    henchmenGroupCount = 1;
    break;

  case "2p":
    playerCount = 2;
    villainGroupCount = 2;
    henchmenGroupCount = 1;
    break;

  case "3p":
    playerCount = 3;
    villainGroupCount = 3;
    henchmenGroupCount = 1;
    break;

  case "4p":
    playerCount = 4;
    villainGroupCount = 3;
    henchmenGroupCount = 2;
    break;

  case "5p":
    playerCount = 5;
    villainGroupCount = 4;
    henchmenGroupCount = 2;
    break;

  // treat Advanced Solo Mode as default
  default:
    playerCount = 1;
    villainGroupCount = 1;
    henchmenGroupCount = 1;
    break;
  }

  // scheme
  const scheme = schemeByName(state.get("scheme"));
  if (scheme !== undefined) {
    mastermindCount = scheme.updateMastermindCount(mastermindCount);
    villainGroupCount = scheme.updateVillainGroupCount(villainGroupCount);
    henchmenGroupCount = scheme.updateHenchmenGroupCount(henchmenGroupCount);
  }

  // update state with numbers figured from mode & scheme

  // masterminds
  const mastermindFn = mastermindCount - state.get("masterminds").size > 0 ?
    addMastermind :
    popMastermind;
  while (state.get("masterminds").size !== mastermindCount) {
    state = mastermindFn(state);
  }

  // villain groups
  const villainGroupFn = villainGroupCount - state.get("villainGroups").size > 0 ?
    addVillainGroup :
    popVillainGroup;
  while (state.get("villainGroups").size !== villainGroupCount) {
    state = villainGroupFn(state);
  }

  // henchmen
  const henchmenGroupFn = henchmenGroupCount - state.get("henchmenGroups").size > 0 ?
    addHenchmenGroup :
    popHenchmenGroup;
  while (state.get("henchmenGroups").size !== henchmenGroupCount) {
    state = henchmenGroupFn(state);
  }

  return state;
};

// update villain/henchmen groups based on Mastermind "always lead" abilities
// and groups specifically required by the Scheme
const updateRequiredGroups = (state) => {
  const scheme = schemeByName(state.get("scheme"));

  let villainGroups = state.get("villainGroups");

  if (scheme !== undefined) {
    scheme.requiredVillainGroups.forEach((villainGroup) => {
      const villainGroupNames = villainGroups.map((g) => g.get("name"))

      if (!villainGroupNames.includes(villainGroup)) {
	const indexUndefined: number = villainGroupNames.indexOf(undefined);
	const indexAny: number = villainGroupNames.indexOf("Any VillainGroup");

	const indices: List<number> = List.of(indexAny, indexUndefined);

	const filteredIndices = indices.filterNot((i) => i == -1).toArray();

	const index = Math.min(...filteredIndices);

	villainGroups = villainGroups.set(index, Map({id: villainGroups.last().get("id") + 1, name: villainGroup}))
      }
    });
  }

  state = state.set("villainGroups", villainGroups);

  // for villain group in scheme's required villain groups
  //   if villain group not in villaingroups
  //     replace first undefined/any group with villain group
  //
  // update villain groups on state

  return state;
};

// update villain deck contents, turns to empty, and maximum winning turn
const updateOutput = (state) => {
  return state.merge(countdown(state));
};

const addVillainGroup = (state) => {
  return state.updateIn(
    ["villainGroups"],
    (villainGroups) => {
      return villainGroups.push(villainGroup.set("id", villainGroupID++));
    }
  );
};

const popVillainGroup = (state) => {
  return state.updateIn(["villainGroups"], (villainGroups) => villainGroups.pop());
};

const addHenchmenGroup = (state) => {
  return state.updateIn(
    ["henchmenGroups"],
    (henchmenGroups) => {
      return henchmenGroups.push(henchmenGroup.set("id", henchmenGroupID++));
    }
  );
};

const popHenchmenGroup = (state) => {
  return state.updateIn(["henchmenGroups"], (henchmenGroups) => henchmenGroups.pop());
};

const addMastermind = (state) => {
  return state.updateIn(
    ["masterminds"],
    (masterminds) => {
      return masterminds.push(mastermind.set("id", mastermindID++));
    }
  );
};

const popMastermind = (state) => {
  return state.updateIn(["masterminds"], (masterminds) => masterminds.pop());
};

const reducer = (oldState = defaultState, action) => {
  let updatedState = ((state, {id, name, text, type}) => {
    switch (type) {

    case "SET_MODE":
      return state.set("mode", text);

    case "SET_SCHEME":
      return state.set("scheme", text);

    case "SET_MASTERMIND":
      return state.updateIn(
        ["masterminds"],
        (masterminds) => masterminds.map((m) => {
          if (id === m.get("id")) {
            return m.set("name", name);
          }
          return m;
        })
      );

    case "SET_VILLAIN_GROUP":
      return state.updateIn(
        ["villainGroups"],
        (villainGroups) => villainGroups.map((v) => {
          if (id === v.get("id")) {
            return v.set("name", name);
          }
          return v;
        })
      );

    case "SET_HENCHMEN_GROUP":
      return state.updateIn(
        ["henchmenGroups"],
        (henchmenGroups) => henchmenGroups.map((v) => {
          if (id === v.get("id")) {
            return v.set("name", name);
          }
          return v;
        })
      );

    default:
      return state;
    }
  })(oldState, action);

  updatedState = updateCounts(updatedState);
  updatedState = updateRequiredGroups(updatedState);
  updatedState = updateOutput(updatedState);

  return updatedState;
};

export default createStore(reducer);
