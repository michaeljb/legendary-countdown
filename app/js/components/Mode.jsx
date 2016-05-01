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
    const options = [
      'Advanced Solo Mode',
      'Solo Mode',
      '2p',
      '3p',
      '4p',
      '5p',
      'Golden Solo Mode'
    ].map((opt) => {return {label: opt, value: opt}});

    const placeholder = 'Mode';

    const val = {
      label: this.props.mode,
      value: this.props.mode
    }

    const onValueChange = (value) => this.props.onValueChange(value && value.value);

    return (
      <SimpleSelect
        placeholder={placeholder}
        options = {options}
	value = {typeof this.props.mode === 'undefined' ? null : val}
	onValueChange = {onValueChange}
      />
    );
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Mode);
