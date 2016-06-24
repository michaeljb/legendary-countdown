import React from "react";
import {connect} from "react-redux";

import VillainDeckContents from "./VillainDeckContents.tsx";
import TurnsToEmpty from "./TurnsToEmpty.tsx";
import MaxWinningTurn from "./MaxWinningTurn.tsx";

const mapStateToProps = (state) => {
  return {
    maxWinningTurn: state.get("maxWinningTurn"),
    villainDeckContents: state.get("villainDeckContents"),
    turnsToEmpty: state.get("turnsToEmpty")
  };
};

const Output = ({
  villainDeckContents,
  turnsToEmpty,
  maxWinningTurn
}) => (
  <div>
    <VillainDeckContents villainDeckContents = {villainDeckContents} />
    <TurnsToEmpty turnsToEmpty = {turnsToEmpty} />
    <MaxWinningTurn maxWinningTurn = {maxWinningTurn} />
  </div>
);

export default connect(
  mapStateToProps
)(Output);
