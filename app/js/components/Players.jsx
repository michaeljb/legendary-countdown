import React from 'react';
import {connect} from 'react-redux';

import {setPlayers} from '../actions';

let Players = ({dispatch}) => {
  let input;

  return (
    <div>
      <input
        ref={(node) => {
          input = node;
        }}
        onBlur={() => {
          dispatch(setPlayers(input.value));
        }}/>
      Players
    </div>
  )
};

export default connect()(Players);
