import React from 'react';

import {setMode} from '../actions';

export default class Mode extends React.Component {
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
      return this.renderMode();
    }
  }

  renderEdit = () => {
    return <input type="text"
      ref={
        (e) => e ? e.selectionStart = this.props.store.getState().get('mode').size : null
      }
      autoFocus={true}
      defaultValue={this.props.store.getState().get('mode')}
      onBlur={this.finishEdit}
      onKeyPress={this.checkEnter} />;
  };

  renderMode = () => {
    return (
      <div onClick={this.edit}>
	<span>{this.props.store.getState().get('mode')}</span>
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

    this.props.store.dispatch(setMode(value));

    this.setState({
      editing: false
    })

  };

}
