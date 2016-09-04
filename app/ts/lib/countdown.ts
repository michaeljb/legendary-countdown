import {List, Map} from "immutable";

export default (state) => {
  return Map({
    villainDeckContents: state.get("villainDeckContents"),
    turnsToEmpty: state.get("turnsToEmpty"),
    maxWinningTurn: state.get("maxWinningTurn")
  });
};
