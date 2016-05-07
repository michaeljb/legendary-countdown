import React from "react";
import {Provider} from "react-redux";

import Mode from "./Mode.tsx";
import Scheme from "./Scheme.tsx";
import Masterminds from "./Masterminds.tsx";
import VillainGroups from "./VillainGroups.tsx";
import HenchmenGroups from "./HenchmenGroups.tsx";
import Output from "./Output.tsx";
import store from "../store";

const logit = () => console.log(store.getState().toJS());

store.subscribe(logit);
logit();

const App = () => (
  <div>
    <Mode />
    <Scheme />
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
