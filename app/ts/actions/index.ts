export const setMode = (text) => {
  return {
    type: "SET_MODE",
    text
  };
};

export const setScheme = (text) => {
  return {
    type: "SET_SCHEME",
    text
  };
};

export const setMastermind = (id, name) => {
  return {
    type: "SET_MASTERMIND",
    name,
    id
  };
};

export const setVillainGroup = (id, name) => {
  return {
    type: "SET_VILLAIN_GROUP",
    name,
    id
  };
};

export const setHenchmenGroup = (id, name) => {
  return {
    type: "SET_HENCHMEN_GROUP",
    name,
    id
  };
};
