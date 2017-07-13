const thunk = ({dispatch, getState}) => next => action {
  if (typeof action === 'function') {
    return action(dispatch, getState);
  }
    next(action);
};

export default thunk;
