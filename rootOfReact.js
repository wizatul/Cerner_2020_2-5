import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from "react-redux";
import { ConnectedRouter } from "react-router-redux";
import * as serviceWorker from './serviceWorker';
import createHistory from 'history/createBrowserHistory';
import configureStore from './js/store/configureStore.js';
import { saveState } from "./js/store/localStorage"
import throttle from "lodash.throttle"
// cerner_2^5_2020
const history = createHistory();
const store = configureStore();

store.subscribe(
  throttle(() => {
    saveState(store.getState().user)
  }, 1000),
)
// Render the root container cerner_2^5_2020
ReactDOM.render(
  <Provider store={store}>
    <ConnectedRouter history={history}>
      <div><p>Hello cerner_2^5_2020</p></div>
    </ConnectedRouter>
  </Provider>,
  document.getElementById("root"),
)

serviceWorker.unregister();
