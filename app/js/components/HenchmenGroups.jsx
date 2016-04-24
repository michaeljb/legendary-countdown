import React from 'react';
import {connect} from 'react-redux';

import {addHenchmenGroup} from '../actions';
import {removeHenchmenGroup} from '../actions';

const mapStateToProps = (state) => {
  return {
    henchmenGroups: state.henchmenGroups
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onClickPlusHenchmenGroup: () => {
      dispatch(addHenchmenGroup());
    },
    onClickMinusHenchmenGroup: () => {
      dispatch(removeHenchmenGroup());
    }
  }
};

const HenchmenGroup = ({
  henchmenGroup,
  onClickPlus,
  onClickMinus
}) => (
  <li>
    {henchmenGroup.name}
    <button onClick={onClickPlus}>
      +
    </button>
    <button onClick={onClickMinus}>
      -
    </button>
  </li>
);

const HenchmenGroups = ({
  henchmenGroups,
  onClickPlusHenchmenGroup,
  onClickMinusHenchmenGroup
}) => (
  <ul>
    {henchmenGroups.map((henchmenGroup) =>
      <HenchmenGroup
        henchmenGroup={henchmenGroup}
        onClickPlus={onClickPlusHenchmenGroup}
        onClickMinus={onClickMinusHenchmenGroup}
    />)}
  </ul>
);

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HenchmenGroups);
