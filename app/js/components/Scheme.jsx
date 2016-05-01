import React from 'react';
import {connect} from 'react-redux';

import {setScheme} from '../actions';

const mapStateToProps = (state) => {
  return {
    scheme: state.get('scheme')
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onFinishEdit: (value) => {
      dispatch(setScheme(value));
    }
  }
};

class Scheme extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      editing: false
    };
  }

  render() {
    if (this.state.editing) {
      return this.renderEdit();
    } else {
      return this.renderScheme();
    }
  }

  renderEdit = () => {
    return <input type="text"
      ref={
        (e) => e ? e.selectionStart = this.props.scheme.size : null
      }
      autoFocus={true}
      defaultValue={this.props.scheme}
      onBlur={this.finishEdit}
      onKeyPress={this.checkEnter} />;
  };

  renderScheme = () => {
    return (
      <div onClick={this.edit}>
	<span>{this.props.scheme}</span>
      </div>
    )
  };

  edit = () => {
    this.setState({
      editing: true
    });
  };

  checkEnter = (e) => {
    if (e.key === 'Enter') {
      this.finishEdit(e);
    }
  };

  finishEdit = (e) => {
    const value = e.target.value;

    this.props.onFinishEdit(value);

    this.setState({
      editing: false
    })

  };

}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Scheme);
