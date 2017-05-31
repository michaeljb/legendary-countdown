import * as React from "react";
import * as ReactDOM from "react-dom";

import { AppContainer } from "react-hot-loader";
// AppContainer is a necessary wrapper component for HMR

let Hello = require("./components/Hello").Hello;

const render = (Component: any) => {
  ReactDOM.render(
    <AppContainer>
      <Component compiler="Typescript" framework="React"/>
    </AppContainer>,
    document.getElementById("root")
  );
};

render(Hello);

// Hot Module Replacement API
if (module.hot) {
  module.hot.accept("./components/Hello", () => {
    let Hello = require("./components/Hello").Hello;
    render(Hello)
  });
}
