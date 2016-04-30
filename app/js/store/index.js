import {createStore} from 'redux';
import {List, Map} from 'immutable';

let mastermindID = 0;
let villainGroupID = 0;
let henchmenGroupID = 0;

const mastermind = Map({id: mastermindID++, name: 'Any Mastermind'});
const villainGroup = Map({id: villainGroupID++, name: 'Any VillainGroup'});
const henchmenGroup = Map({id: henchmenGroupID++, name: 'Any HenchmenGroup'});

const defaultState = Map({
  mode: 'Advanced Solo Mode',
  scheme: 'Unleash the Power of the Cosmic Cube',
  masterminds: List.of(mastermind),
  villainGroups: List.of(villainGroup),
  henchmenGroups: List.of(henchmenGroup),
  villainDeckContents: '8 Scheme Twists, 5 Master Strikes, 8 Villains, 3 Henchmen, 1 Bystander',
  turnsToEmpty: List.of(20, 21),
  maximumWinningTurn: 19
});

const reducer = (state = defaultState, action) => {
  const {id, name, text, type} = action;

  switch (type) {

  case 'SET_MODE':
    return state.set('mode', text);

  case 'SET_SCHEME':
    return state.set('scheme', text);

  case 'SET_MASTERMIND':
    return state.updateIn(
      ['masterminds'],
      (masterminds) => masterminds.map((m) => {
        if (id === m.get('id')) {
          return m.set('name', name);
        }
        return m;
      })
    );

  case 'ADD_VILLAIN_GROUP':
    return state.updateIn(
      ['villainGroups'],
      (villainGroups) => {
        return villainGroups.push(villainGroup.set('id', villainGroupID++));
      }
    );

  case 'REMOVE_VILLAIN_GROUP':
    return state.updateIn(
      ['villainGroups'],
      (villainGroups) => {
        return villainGroups.filterNot((v) => id === v.get('id'));
      }
    );

  case 'SET_VILLAIN_GROUP':
    return state.updateIn(
      ['villainGroups'],
      (villainGroups) => villainGroups.map((v) => {
        if (id === v.get('id')) {
          return v.set('name', name);
        }
        return v;
      })
    );

  case 'ADD_HENCHMEN_GROUP':
    return state.updateIn(
      ['henchmenGroups'],
      (henchmenGroups) => {
        return henchmenGroups.push(henchmenGroup.set('id', henchmenGroupID++));
      }
    );

  case 'REMOVE_HENCHMEN_GROUP':
    return state.updateIn(
      ['henchmenGroups'],
      (henchmenGroups) => {
        return henchmenGroups.filterNot((v) => id === v.get('id'));
      }
    );

  case 'SET_HENCHMEN_GROUP':
    return state.updateIn(
      ['henchmenGroups'],
      (henchmenGroups) => henchmenGroups.map((v) => {
        if (id === v.get('id')) {
          return v.set('name', name);
        }
        return v;
      })
    );

  default:
    return state;
  }
};

export default createStore(reducer);
