import React from 'react';
import {Provider} from 'react-redux';

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

const App = () => (
  <div>
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
