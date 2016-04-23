import {createStore} from 'redux';

const defaultState = {
  mode: 'Advanced Solo mode',
  scheme: 'Any Scheme',
  masterminds: {
    'count': 1,
    'values': ['Any Mastermind']
  },
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
  default:
    return state;
  }
};

export default createStore(reducer);
