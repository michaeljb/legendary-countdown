import {createStore} from 'redux';

let mastermindID = 0;
let villainGroupID = 0;
let henchmenGroupID = 0;

const newMastermind = (name = 'Any Mastermind') => {
  return {
    name,
    id: mastermindID++
  }
}

const newVillainGroup = (name = 'Any Villain Group') => {
  return {
    name,
    id: villainGroupID++
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
  masterminds: [newMastermind()],
  villainGroups: [newVillainGroup()],
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
          newMastermind()
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

    case 'ADD_VILLAIN_GROUP':
      return {
        ...state,
        villainGroups: [
          ...state.villainGroups,
          newVillainGroup()
        ]
      }
    case 'REMOVE_VILLAIN_GROUP':
      if (state.villainGroups.length === 1) {
        return state;
      }

      return {
        ...state,
        villainGroups: state.villainGroups.slice(0, -1)
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
