import React from "react";
import {connect} from "react-redux";

import Selector from "./Selector";
import {setHenchmenGroup} from "../actions";

const HenchmenGroup = ({
  henchmenGroup,
  onValueChange
}) => {
  const optionList = [
    "Asgardian Warriors",
    "Cops",
    "Doombot Legion",
    "Ghost Racers",
    "Hand Ninjas",
    "Khonshu Guardians",
    "M.O.D.O.K.s",
    "Maggia Goons",
    "Magma Men",
    "Multiple Man",
    "Phalanx",
    "S.H.I.E.L.D. Assault Squad",
    "Savage Land Mutates",
    "Sentinels",
    "Spider-Infected",
    "Thor Corps"
  ];

  return (
    <Selector
      theState = {henchmenGroup.get("name")}
      optionList = {optionList}
      placeholder = "Henchmen Group"
      onValueChange = {onValueChange}
    />
  );
};

const mapStateToProps = (state) => {
  return {
    henchmenGroups: state.get("henchmenGroups")
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    onValueChange: (id, name) => {
      dispatch(setHenchmenGroup(id, name));
    }
  };
};

const HenchmenGroups = ({
  henchmenGroups,
  onValueChange
}) =>  (
  <div>
    {henchmenGroups.map((henchmenGroup) => {
      const id = henchmenGroup.get("id");

      return (
        <HenchmenGroup
          key = {id}
          henchmenGroup={henchmenGroup}
          onValueChange={onValueChange.bind(null, id)}
        />
      );
    })}
  </div>
);


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HenchmenGroups);
