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

export const addVillainGroup = () => {
  return {
    type: 'ADD_VILLAIN_GROUP'
  }
};

export const removeVillainGroup = () => {
  return {
    type: 'REMOVE_VILLAIN_GROUP'
  }
};

export const addHenchmenGroup = () => {
  return {
    type: 'ADD_HENCHMEN_GROUP'
  }
};

export const removeHenchmenGroup = () => {
  return {
    type: 'REMOVE_HENCHMEN_GROUP'
  }
};
