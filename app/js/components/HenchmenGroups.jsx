import React from 'react';
import {connect} from 'react-redux';

import {addHenchmenGroup} from '../actions';
import {removeHenchmenGroup} from '../actions';
import {setHenchmenGroup} from '../actions';

const mapStateToProps = (state) => {
  return {
    henchmenGroups: state.get('henchmenGroups')
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onClickPlusHenchmenGroup: () => {
      dispatch(addHenchmenGroup());
    },
    onClickMinusHenchmenGroup: (id) => {
      dispatch(removeHenchmenGroup(id));
    },
    onEditHenchmenGroup: (id, name) => {
      dispatch(setHenchmenGroup(id, name));
    }
  }
};

class HenchmenGroup extends React.Component {
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
      return this.renderHenchmenGroup();
    }
  }

  renderEdit = () => {
    return <input type="text"
      ref={
        (e) => e ? e.selectionStart = this.props.henchmenGroup.get('name').size : null
      }
      autoFocus={true}
      defaultValue={this.props.henchmenGroup.get('name')}
      onBlur={this.finishEdit}
      onKeyPress={this.checkEnter} />;
  };

  renderHenchmenGroup = () => {
    return (
      <div>
        <span onClick={this.edit}>
          {this.props.henchmenGroup.get('name')}
        </span>

        <button onClick={() => this.props.onClickPlus(this.props.henchmenGroup.get('id'))}>
          +
        </button>
        <button onClick={() => this.props.onClickMinus(this.props.henchmenGroup.get('id'))}>
          -
        </button>
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
      this.props.onEdit(this.props.henchmenGroup.get('id'), value);

      this.setState({
        editing: false
      })
    }
  };

}

const HenchmenGroups = ({
  henchmenGroups,
  onClickPlusHenchmenGroup,
  onClickMinusHenchmenGroup,
  onEditHenchmenGroup
}) => (
  <ul>{henchmenGroups.map((henchmenGroup) =>
    <li key={henchmenGroup.get('id')}>
      <HenchmenGroup
        henchmenGroup={henchmenGroup}
        onClickPlus={onClickPlusHenchmenGroup}
        onClickMinus={onClickMinusHenchmenGroup}
        onEdit={onEditHenchmenGroup}
        />
    </li>
  )}</ul>
);

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HenchmenGroups);
