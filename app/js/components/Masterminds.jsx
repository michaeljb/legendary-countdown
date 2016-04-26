import React from 'react';
import {connect} from 'react-redux';

import {setMastermind} from '../actions';

const mapStateToProps = (state) => {
  return {
    masterminds: state.get('masterminds')
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onEditMastermind: (id, name) => {
      dispatch(setMastermind(id, name));
    }
  }
};

class Mastermind extends React.Component {
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
      return this.renderMastermind();
    }
  }

  renderEdit = () => {
    return <input type="text"
      ref={
        (e) => e ? e.selectionStart = this.props.mastermind.get('name').size : null
      }
      autoFocus={true}
    defaultValue={this.props.mastermind.get('name')}
      onBlur={this.finishEdit}
      onKeyPress={this.checkEnter} />;
  };

  renderMastermind = () => {
    return (
      <div onClick={this.edit}>
	<span>{this.props.mastermind.get('name')}</span>
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

    if (this.props.onEdit) {
      this.props.onEdit(this.props.mastermind.get('id'), value);

      this.setState({
        editing: false
      })
    }
  };
}

const Masterminds = ({
  masterminds,
  onEditMastermind
}) =>  { return (
  <ul>{masterminds.map((mastermind) =>
    <li key={mastermind.get('id')}>
      <Mastermind
        mastermind={mastermind}
        onEdit={onEditMastermind}
        />
    </li>
  )}</ul>
) }

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Masterminds);
