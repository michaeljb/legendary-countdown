import React from 'react';
import {connect} from 'react-redux';

import {addVillainGroup} from '../actions';
import {removeVillainGroup} from '../actions';

const mapStateToProps = (state) => {
  return {
    villainGroups: state.villainGroups
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onClickPlusVillainGroup: () => {
      dispatch(addVillainGroup());
    },
    onClickMinusVillainGroup: () => {
      dispatch(removeVillainGroup());
    }
  }
};

const VillainGroup = ({
  villainGroup,
  onClickPlus,
  onClickMinus
}) => (
  <li>
    {villainGroup.name}
    <button onClick={onClickPlus}>
      +
    </button>
    <button onClick={onClickMinus}>
      -
    </button>
  </li>
);

const VillainGroups = ({
  villainGroups,
  onClickPlusVillainGroup,
  onClickMinusVillainGroup
}) => (
  <ul>
    {villainGroups.map((villainGroup) =>
      <VillainGroup
        villainGroup={villainGroup}
        onClickPlus={onClickPlusVillainGroup}
        onClickMinus={onClickMinusVillainGroup}
    />)}
  </ul>
);

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(VillainGroups);
