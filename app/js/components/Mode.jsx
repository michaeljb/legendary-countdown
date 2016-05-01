import React from 'react';
import {SimpleSelect} from 'react-selectize';
import {connect} from 'react-redux';

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

class Mode extends React.Component {
  render() {
    const mode = this.props.mode;

    const placeholder = 'Mode';

    const options = [
      'Advanced Solo Mode',
      'Solo Mode',
      '2p',
      '3p',
      '4p',
      '5p',
      'Golden Solo Mode'
    ].map((opt) => {return {label: opt, value: opt}});


    const value = typeof mode === 'undefined' ? null : {label: mode, value: mode};

    const onValueChange = (val) => this.props.onValueChange(val && val.value);

    const props = {placeholder, options, value, onValueChange};

    return (
      <SimpleSelect {...props} />
    );
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Mode);
