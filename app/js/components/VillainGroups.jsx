import React from 'react';
import {connect} from 'react-redux';

import {addVillainGroup} from '../actions';
import {removeVillainGroup} from '../actions';
import {setVillainGroup} from '../actions';

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
    onClickMinusVillainGroup: (id) => {
      dispatch(removeVillainGroup(id));
    },
    onEditVillainGroup: (id, name) => {
      dispatch(setVillainGroup(id, name));
    }
  }
};

class VillainGroup extends React.Component {
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
      return this.renderVillainGroup();
    }
  }

  renderEdit = () => {
    return <input type="text"
      ref={
        (e) => e ? e.selectionStart = this.props.villainGroup.name.length : null
      }
      autoFocus={true}
      defaultValue={this.props.villainGroup.name}
      onBlur={this.finishEdit}
      onKeyPress={this.checkEnter} />;
  };

  renderVillainGroup = () => {
    return (
      <div>
        <span onClick={this.edit}>
          {this.props.villainGroup.name}
        </span>

        <button onClick={() => this.props.onClickPlus(this.props.villainGroup.id)}>
          +
        </button>
        <button onClick={() => this.props.onClickMinus(this.props.villainGroup.id)}>
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
      this.props.onEdit(this.props.villainGroup.id, value);

      this.setState({
        editing: false
      })
    }
  };

}

const VillainGroups = ({
  villainGroups,
  onClickPlusVillainGroup,
  onClickMinusVillainGroup,
  onEditVillainGroup
}) => (
  <ul>{villainGroups.map((villainGroup) =>
    <li key={villainGroup.id}>
      <VillainGroup
        villainGroup={villainGroup}
        onClickPlus={onClickPlusVillainGroup}
        onClickMinus={onClickMinusVillainGroup}
        onEdit={onEditVillainGroup}
        />
    </li>
  )}</ul>
);

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(VillainGroups);
