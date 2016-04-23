import React from 'react';
import {connect} from 'react-redux';

import {setMode} from '../actions';

const mapStateToProps = (state) => {
  return {
    mode: state.mode
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onBlur: (text) => {
      dispatch(setMode(text));
    }
  };
};

let Mode = ({mode, onBlur}) => {
  let input;

  return (
    <div>
      <input
        ref={(node) => {
          input = node;
        }}
        onBlur={() => { onBlur(input.value)}}
	/>
	Mode
	<span>{mode}</span>
    </div>
  )
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Mode);
