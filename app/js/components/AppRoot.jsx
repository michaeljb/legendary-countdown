import React from 'react';
import {Provider} from 'react-redux';
import {SimpleSelect} from 'react-selectize';

import Mode from './Mode.jsx';
import Scheme from './Scheme.jsx';
import Masterminds from './Masterminds.jsx';
import VillainGroups from './VillainGroups.jsx';
import HenchmenGroups from './HenchmenGroups.jsx';
import Output from './Output.jsx';
import store from '../store';

const logit = () => console.log(store.getState().toJS());

store.subscribe(logit);
logit();

//return <SimpleSelect options = {[{label: '2p', value: '2p'}]} placeholder = "Mode" />

const Form = React.createClass({
  render: () => {
    const options = ['apple', 'mango', 'grapes', 'melon', 'strawberry'].map(function(fruit){
      return {label: fruit, value: fruit}
    });
    return <SimpleSelect options = {options} placeholder = 'Select a fruit'></SimpleSelect>
  }
});

const App = () => (
  <div>
    <Form />
    <Mode store={store} />
    <Scheme store={store} />
    <Masterminds />
    <VillainGroups />
    <HenchmenGroups />
    <Output />
  </div>
);

export default (
  <Provider store={store}>
    <App />
  </Provider>
);
