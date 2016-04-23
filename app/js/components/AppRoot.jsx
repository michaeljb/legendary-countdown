import React from 'react';
import {Provider} from 'react-redux';

import Players from './Players.jsx';
import Scheme from './Scheme.jsx';
import Masterminds from './Masterminds.jsx';
import Villains from './Villains.jsx';
import Henchmen from './Henchmen.jsx';
import Output from './Output.jsx';
import store from '../store';

store.subscribe(() => console.log(store.getState()));

const App = () => (
  <div>
    <Players />
    <Scheme />
    <Masterminds />
    <Villains />
    <Henchmen />
    <Output />
  </div>
);

export default (
  <Provider store={store}>
    <App />
  </Provider>
);
