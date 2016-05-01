import React from 'react';

import {SimpleSelect} from 'react-selectize';

const Selector = (props) => {
  const {theState, placeholder, optionList, onValueChange} = props;

  const options = optionList.map((opt) => {return {label: opt, value: opt}});

  const theStateOption = {label: theState, value: theState}

  const value = typeof theState === 'undefined' ? null : theStateOption;

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
