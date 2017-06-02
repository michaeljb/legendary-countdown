import * as React from "react";
import * as ReactDOM from "react-dom";
import { AppContainer } from "react-hot-loader";

import App from "./components/App";

const rootEl = document.getElementById("root");

ReactDOM.render(
  <AppContainer>
    <App compiler="Typescript" framework="React"/>
  </AppContainer>,
  rootEl
)

if (module.hot) {
  module.hot.accept("./components/App", () => {
    const nextApp = require<any>("./components/App");
    ReactDOM.render(
      <AppContainer>
        <App compiler="Typescript" framework="React" />
      </AppContainer>
      ,
      rootEl
    )
  });
}
