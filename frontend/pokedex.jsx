import React from 'react';
import ReactDOM from 'react-dom';
import {receiveAllPokemon, RECEIVE_ALL_POKEMON} from './actions/pokemon_actions';
import {fetchAllPokemon} from './util/api_util';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  // window.receiveAllPokemon =receiveAllPokemon;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // window.fetchAllPokemon =fetchAllPokemon;

  const rootEl = document.getElementById('root');
  const store = configureStore();
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);
});
