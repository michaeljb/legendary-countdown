import {createStore} from 'redux';

const defaultState = {};

const reducer = (state = defaultState, action) => {
  switch (action.type) {
  case 'SET_PLAYERS':
    return {
      ...state,
      players: action.text
    };
  default:
    return state;
  }
};

export default createStore(reducer);
