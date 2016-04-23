import React from 'react';
import {connect} from 'react-redux';

const mapStateToProps = (state) => {
  return {
    scheme: state.scheme
  }
};

const Scheme = ({scheme}) => {
  return (
    <div>
      Scheme
      <span>{scheme}</span>
    </div>
  )
};

export default connect(
  mapStateToProps
)(Scheme);
