import React from 'react';
import {connect} from 'react-redux';

import {addMastermind} from '../actions';
import {removeMastermind} from '../actions';

const mapStateToProps = (state) => {
  return {
    masterminds: state.masterminds
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onClickPlusMastermind: () => {
      dispatch(addMastermind());
    },
    onClickMinusMastermind: () => {
      dispatch(removeMastermind());
    }
  }
};

const Mastermind = ({
  mastermind,
  onClickPlus,
  onClickMinus
}) => (
  <li>
    {mastermind.name}
    <button onClick={onClickPlus}>
      +
    </button>
    <button onClick={onClickMinus}>
      -
    </button>
  </li>
);

const Masterminds = ({
  masterminds,
  onClickPlusMastermind,
  onClickMinusMastermind
}) =>  (
  <ul>
    {masterminds.map((mastermind) =>
      <Mastermind
        mastermind={mastermind}
        onClickPlus={onClickPlusMastermind}
        onClickMinus={onClickMinusMastermind}
    />)}
  </ul>
)

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Masterminds);
