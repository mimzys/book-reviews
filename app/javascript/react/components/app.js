import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import BooksShowContainer from '../containers/BooksShowContainer';

 const App = (props) => {
   return (
     <Router history={browserHistory}>
       <Route path='/books/:id' component={BooksShowContainer} />
     </Router>
   );
 }

export default App;
