import {createStore} from 'redux';

let mastermindID = 0;
let villainGroupID = 0;
let henchmenGroupID = 0;

const newMastermind = (id, name = 'Any Mastermind') => {
  return {
    name,
    id
  }
}

const newVillainGroup = (id, name = 'Any Villain Group') => {
  return {
    name,
    id
  }
}

const newHenchmenGroup = (name = 'Any Henchmen Group') => {
  return {
    name,
    id: henchmenGroupID++
  }
}

const defaultState = {
  mode: 'Advanced Solo mode',
  scheme: 'Any Scheme',
  masterminds: [newMastermind(mastermindID++)],
  villainGroups: [newVillainGroup(villainGroupID++)],
  henchmenGroups: [newHenchmenGroup()],

  villainDeckContents: '8 Scheme Twists, 5 Master Strikes, 8 Villains, 3 Henchmen, 1 Bystander',
  turnsToEmpty: [20, 21],
  maximumWinningTurn: 19
};

const reducer = (state = defaultState, action) => {
  switch (action.type) {
  case 'SET_MODE':
    return {
      ...state,
      mode: action.text
    };

  case 'ADD_MASTERMIND':
    return {
      ...state,
      masterminds: [
        ...state.masterminds,
        newMastermind(mastermindID++)
      ]
    }
  case 'REMOVE_MASTERMIND':
    if (state.masterminds.length === 1) {
      return state;
    }

    return {
      ...state,
      masterminds: state.masterminds.slice(0, -1)
    }
  case 'SET_MASTERMIND':
    var index;
    for (var i = 0; i < state.masterminds.length; i++) {
      if (state.masterminds[i].id === action.id) {
        index = i;
      }
    }
    var masterminds = state.masterminds.slice();
    masterminds[index] = newMastermind(action.id, action.name);
    return {
      ...state,
      masterminds
    }

  case 'ADD_VILLAIN_GROUP':
    return {
      ...state,
      villainGroups: [
        ...state.villainGroups,
        newVillainGroup(villainGroupID++)
      ]
    }
  case 'REMOVE_VILLAIN_GROUP':
    var villainGroups = state.villainGroups.slice();
    index = -1;
    for (i = 0; i < villainGroups.length; i++) {
      if (villainGroups[i].id === action.id) {
        index = i;
      }
    }

    if (index > -1) {
      villainGroups.splice(index, 1)

      return {
        ...state,
        villainGroups
      };
    } else {
      return state;
    }
  case 'SET_VILLAIN_GROUP':
    index;
    for (i = 0; i < state.villainGroups.length; i++) {
      if (state.villainGroups[i].id === action.id) {
        index = i;
      }
    }
    villainGroups = state.villainGroups.slice();
    villainGroups[index] = newVillainGroup(action.id, action.name);
    return {
      ...state,
      villainGroups
    }

  case 'ADD_HENCHMEN_GROUP':
    return {
      ...state,
      henchmenGroups: [
        ...state.henchmenGroups,
        newHenchmenGroup()
      ]
    }
  case 'REMOVE_HENCHMEN_GROUP':
    if (state.henchmenGroups.length === 1) {
      return state;
    }

    return {
      ...state,
      henchmenGroups: state.henchmenGroups.slice(0, -1)
    }

  default:
    return state;
  }
};

export default createStore(reducer);
