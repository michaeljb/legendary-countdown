import React from 'react';
import {connect} from 'react-redux';

const mapStateToProps = (state) => {
  return {
    henchmenGroups: state.henchmenGroups
  }
};

const HenchmenGroups = ({henchmenGroups}) => {

  return (
    <div>
      HenchmenGroups
      <span>{henchmenGroups.values[0]}</span>
    </div>
  )
};

export default connect(
  mapStateToProps
)(HenchmenGroups);
