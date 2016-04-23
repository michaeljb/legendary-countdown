import React from 'react';
import {connect} from 'react-redux';

const mapStateToProps = (state) => {
  return {
    masterminds: state.masterminds
  }
};

const Masterminds = ({masterminds}) => {
  return (
    <div>
      Masterminds
      <span>{masterminds.values[0]}</span>
    </div>
  )
};

export default connect(mapStateToProps)(Masterminds);
