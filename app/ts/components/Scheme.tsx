import React from "react";
import {connect} from "react-redux";

import Selector from "./Selector";
import {setScheme} from "../actions";
import {schemeNames} from "../lib/schemes.ts";

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
  return (
    <Selector
      theState = {scheme}
      optionList = {schemeNames.toArray()}
      placeholder = "Scheme"
      onValueChange = {onValueChange}
    />
  );
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Scheme);
