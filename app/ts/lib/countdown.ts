import {List, Map} from "immutable";

export default (state) => {

  const villainDeckContents = state.get("villainDeckContents");
  const turnsToEmpty = state.get("turnsToEmpty");
  const maxWinningTurn = state.get("maxWinningTurn");

  return Map({
    villainDeckContents: villainDeckContents,
    turnsToEmpty: turnsToEmpty,
    maxWinningTurn: maxWinningTurn
  });

};
