import React from 'react';
import {connect} from 'react-redux';

import Selector from './Selector';
import {setMode} from '../actions';

const mapStateToProps = (state) => {
  return {
    mode: state.get('mode')
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onValueChange: (name) => {
      dispatch(setMode(name));
    }
  }
};

const Mode = ({
  mode,
  onValueChange
}) => {
  const optionList = [
    'Advanced Solo Mode',
    'Solo Mode',
    '2p',
    '3p',
    '4p',
    '5p',
    'Golden Solo Mode'
  ];

  return (
    <Selector
      state = {mode}
      optionList = {optionList}
      placeholder = "Mode"
      onValueChange = {onValueChange}
    />
  );
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Mode);
