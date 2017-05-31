import * as React from "react";

import * as styles from './Hello.css';

export interface HelloProps { compiler: string; framework: string; }

// 'HelloProps' describes the shape of props.
// State is never set so we use the 'undefined' type.
export class Hello extends React.Component<HelloProps, undefined> {
  render() {
    return <h1 className={styles.hello}>Hello from {this.props.compiler} and {this.props.framework}!</h1>;
  }
}
