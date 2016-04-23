export const setMode = (text) => {
  return {
    type: 'SET_MODE',
    text
  };
};

export const addMastermind = () => {
  return {
    type: 'ADD_MASTERMIND'
  }
};

export const removeMastermind = () => {
  return {
    type: 'REMOVE_MASTERMIND'
  }
};
