import React from "react";

export default ({turnsToEmpty}) => (
  <div>
    Turns until the Villain Deck will be empty: {turnsToEmpty.join("-")}
  </div>
);
