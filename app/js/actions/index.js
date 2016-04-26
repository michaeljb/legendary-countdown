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

export const setMastermind = (id, name) => {
  return {
    type: 'SET_MASTERMIND',
    name,
    id
  }
};

export const addVillainGroup = () => {
  return {
    type: 'ADD_VILLAIN_GROUP'
  }
};

export const removeVillainGroup = (id) => {
  return {
    type: 'REMOVE_VILLAIN_GROUP',
    id
  }
};

export const setVillainGroup = (id, name) => {
  return {
    type: 'SET_VILLAIN_GROUP',
    name,
    id
  }
};

export const addHenchmenGroup = () => {
  return {
    type: 'ADD_HENCHMEN_GROUP'
  }
};

export const removeHenchmenGroup = (id) => {
  return {
    type: 'REMOVE_HENCHMEN_GROUP',
    id
  }
};

export const setHenchmenGroup = (id, name) => {
  return {
    type: 'SET_HENCHMEN_GROUP',
    name,
    id
  }
};
