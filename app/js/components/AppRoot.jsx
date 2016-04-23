import React from 'react';
import {Provider} from 'react-redux';

import Mode from './Mode.jsx';
import Scheme from './Scheme.jsx';
import Masterminds from './Masterminds.jsx';
import Villains from './Villains.jsx';
import HenchmenGroups from './HenchmenGroups.jsx';
import Output from './Output.jsx';
import store from '../store';

store.subscribe(() => console.log(store.getState()));

const App = () => (
  <div>
    <Mode />
    <Scheme />
    <Masterminds />
    <Villains />
    <HenchmenGroups />
    <Output />
  </div>
);

export default (
  <Provider store={store}>
    <App />
  </Provider>
);
