import React from 'react';
import {connect} from 'react-redux';

import Selector from './Selector';
import {setVillainGroup} from '../actions';

const VillainGroup = ({
  villainGroup,
  onValueChange
}) => {
  const optionList = [
    'Avengers',
    'Brotherhood',
    'Deadlands',
    'Deadpool\'s Secret Secret Wars',
    'Defenders',
    'Domain of Apocalypse',
    'Emissaries of Evil',
    'Enemies of Asgard',
    'Four Horsemen',
    'Guardians of Knowhere',
    'HYDRA',
    'Heralds of Galactus',
    'Infinity Gems',
    'K\'unlun',
    'Kree Starforce',
    'Limbo',
    'MLF',
    'Manhattan (Earth-1610)',
    'Marauders',
    'Marvel Knights',
    'Masters of Evil',
    'Masters of Evil (WWII)',
    'Maximum Carnage',
    'Monster Metropolis',
    'Radiation',
    'Sentinel Territories',
    'Sinister Six',
    'Skrulls',
    'Spider Friends',
    'Spider-Foes',
    'Streets of New York',
    'Subterranea',
    'The Mighty',
    'Uncanny Avengers',
    'Uncanny X-Men',
    'Underworld',
    'Utopolis',
    'Wasteland',
    'X-Men \'92',
    'X-Men First Class',
    'Zola\'s Creation'
  ];

  return (
    <Selector
      theState = {villainGroup.get('name')}
      optionList = {optionList}
      placeholder = "Villain Group"
      onValueChange = {onValueChange}
    />
  );
};

const mapStateToProps = (state) => {
  return {
    villainGroups: state.get('villainGroups')
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onValueChange: (id, name) => {
      dispatch(setVillainGroup(id, name));
    }
  }
};

const VillainGroups = ({
  villainGroups,
  onValueChange
}) =>  (
  <div>
    {villainGroups.map((villainGroup) => {
      const id = villainGroup.get('id');

      return (
        <VillainGroup
          key = {id}
          villainGroup={villainGroup}
          onValueChange={onValueChange.bind(null, id)}
        />
      );
    })}
  </div>
);


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(VillainGroups);
