import {createStore} from 'redux';

let mastermindID = 0;

const defaultState = {
  mode: 'Advanced Solo mode',
  scheme: 'Any Scheme',
  masterminds: [
    {
      name: 'Any Mastermind',
      id: mastermindID++
    }
  ],
  villainGroups: {
    'count': 1,
    'values': ['Any Villain Group']
  },
  henchmenGroups: {
    'count': 1,
    'values': ['Any Henchmen Group']
  },

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
    var newMastermind = {
      name: 'Any Mastermind',
      id: mastermindID++
    }

    return {
      ...state,
      masterminds: [
        ...state.masterminds,
        newMastermind
      ]
    }
  case 'REMOVE_MASTERMIND':
    return {
      ...state,
      masterminds: state.masterminds.slice(0, -1)
    }
  default:
    return state;
  }
};

export default createStore(reducer);
