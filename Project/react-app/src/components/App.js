import React, {Component} from 'react';
import './../styles/App.css';

import Welcome from './Welcome';

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="container">
          <Welcome/>
        </div>
      </div>
    );
  }
}

export default App;
