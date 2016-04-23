import React from 'react';
import {connect} from 'react-redux';

const mapStateToProps = (state) => {
  return {
    villainGroups: state.villainGroups
  }
};

const VillainGroups = ({villainGroups}) => {

  return (
    <div>
      VillainGroups
      <span>{villainGroups.values[0]}</span>
    </div>
  )
};

export default connect(
  mapStateToProps
)(VillainGroups);
