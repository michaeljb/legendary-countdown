import React from 'react';

import {setScheme} from '../actions';

export default class Scheme extends React.Component {
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
        (e) => e ? e.selectionStart = this.props.store.getState().get('scheme').size : null
      }
      autoFocus={true}
      defaultValue={this.props.store.getState().get('scheme')}
      onBlur={this.finishEdit}
      onKeyPress={this.checkEnter} />;
  };

  renderScheme = () => {
    return (
      <div onClick={this.edit}>
	<span>{this.props.store.getState().get('scheme')}</span>
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

    this.props.store.dispatch(setScheme(value));

    this.setState({
      editing: false
    })

  };

}
