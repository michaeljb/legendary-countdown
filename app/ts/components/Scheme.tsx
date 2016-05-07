import React from "react";
import {connect} from "react-redux";

import Selector from "./Selector";
import {setScheme} from "../actions";

const mapStateToProps = (state) => {
  return {
    scheme: state.get("scheme")
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    onValueChange: (name) => {
      dispatch(setScheme(name));
    }
  };
};

const Scheme = ({
  scheme,
  onValueChange
}) => {
  const optionList = [
    "Bathe the Earth in Cosmic Rays",
    "Brainwash the Military",
    "Build an Army of Annihilation",
    "Build an Underground MegaVault Prison",
    "Cage Villains in Power-Supressing Cells",
    "Capture Baby Hope",
    "Change the Outcome of WWII",
    "Corrupt the Next Generation of Heroes",
    "Crown Thor King of Asgard",
    "Crush HYDRA",
    "Crush Them With My Bare Hands",
    "Dark Alliance",
    "Deadlands Hordes Charge the Wall",
    "Detonate the Helicarrier",
    "Enthrone the Barons of Battleworld",
    "Fear Itself",
    "Flood the Planet with Melted Glaciers",
    "Forge the Infinity Gauntlet",
    "Fragmented Realities",
    "Go Back in Time to Slay Heroes' Ancestors",
    "Graduation at Xavier's X-Academy",
    "Infiltrate the Lair With Spies",
    "Intergalactic Kree Nega-Bomb",
    "Invade the Daily Bugle News HQ",
    "Invincible Force Field",
    "Last Stand at Avengers Tower",
    "Mass Produce War Machine Armor",
    "Massive Earthquake Generator",
    "Master of Tyrants",
    "Master the Mysteries of Kung-Fu",
    "Midtown Bank Robbery",
    "Negative Zone Prison Breakout",
    "Organized Crime Wave",
    "Pan-Dimensional Plague",
    "Portals to Dark Dimension",
    "Pull Reality Into the Negative Zone",
    "Replace Earth's Leaders with Killbots",
    "Resurrect Heroes With Norn Stones",
    "Save Humanity",
    "Secret Invasion of the Skrull Shapeshifters",
    "Secret Wars",
    "Sinister Ambitions",
    "Smash Two Dimensions Together",
    "Splice Humans with Spider DNA",
    "Steal the Weaponized Plutonium",
    "Super Hero Civil War",
    "The Clone Saga",
    "The Fountain of Eternal Life",
    "The God-Emperor of Battleworld",
    "The Kree-Skrull War",
    "The Legacy Virus",
    "The Mark of Khonshu",
    "The Traitor",
    "The Unbreakable Enigma Code",
    "Transform Citizens Into Demons",
    "Unite the Shards",
    "Unleash the Power of the Cosmic Cube",
    "Weave a Web of Lies",
    "X-Cutioner's Song"
  ];

  return (
    <Selector
      theState = {scheme}
      optionList = {optionList}
      placeholder = "Scheme"
      onValueChange = {onValueChange}
    />
  );
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Scheme);
