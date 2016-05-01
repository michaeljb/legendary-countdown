import React from 'react';

import {SimpleSelect} from 'react-selectize';

const Selector = (props) => {
  const {state, placeholder, optionList, onValueChange} = props;

  const options = optionList.map((opt) => {return {label: opt, value: opt}});

  const stateOption = {label: state, value: state}

  const value = typeof state === 'undefined' ? null : stateOption;

  return (
    <SimpleSelect
      placeholder = {placeholder}
      options = {options}
      value = {value}
      onValueChange = {(val) => onValueChange(val && val.value)}
    />
  );
};

export default Selector;
