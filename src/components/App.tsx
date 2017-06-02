import * as React from "react";

import * as styles from './App.css';

export interface AppProps { compiler: string; framework: string; }

// 'AppProps' describes the shape of props.
// State is never set so we use the 'undefined' type.
export default class App extends React.Component<AppProps, any> {
  render() {
      return <h1 className={styles.app}>Hello from {this.props.compiler} and {this.props.framework}!</h1>;
  }
}
