import React from "react";
import {connect} from "react-redux";

import Selector from "./Selector";
import {setMastermind} from "../actions";

const Mastermind = ({
  mastermind,
  onValueChange
}) => {
  const optionList = [
    "Apocalypse",
    "Arnim Zola",
    "Baron Heinrich Zemo",
    "Carnage",
    "Dr. Doom",
    "Dr. Strange",
    "Galactus",
    "Immortal Emperor Zheng-Zhu",
    "King Hyperion",
    "Kingpin",
    "Loki",
    "Madelyne Pryor",
    "Magneto",
    "Mephisto",
    "Mole Man",
    "Mr. Sinister",
    "Mysterio",
    "Nick Fury",
    "Nimrod",
    "Odin",
    "Professor X",
    "Red Skull",
    "Shiklah, the Demon Bride",
    "Spider-Queen",
    "Stryfe",
    "Supreme Intelligence of the Kree",
    "Thanos",
    "Uru-Enchanted Iron Man",
    "Wasteland Hulk",
    "Zombie Green Goblin"
  ];

  return (
    <Selector
      theState = {mastermind.get("name")}
      optionList = {optionList}
      placeholder = "Mastermind"
      onValueChange = {onValueChange}
    />
  );
};

const mapStateToProps = (state) => {
  return {
    masterminds: state.get("masterminds")
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    onValueChange: (id, name) => {
      dispatch(setMastermind(id, name));
    }
  };
};

const Masterminds = ({
  masterminds,
  onValueChange
}) =>  (
  <div>
    {masterminds.map((mastermind) => {
      const id = mastermind.get("id");

      return (
        <Mastermind
          key = {id}
          mastermind={mastermind}
          onValueChange={onValueChange.bind(null, id)}
        />
      );
    })}
  </div>
);


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Masterminds);
