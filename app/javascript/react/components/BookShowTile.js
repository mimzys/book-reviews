import React from 'react';
import { browserHistory, Link } from 'react-router';

const BookShowTile = (props) => {
  return(
    <div className="book">
      <h1 className="title">{props.name}</h1>
      <p className="author">Author: {props.author}</p>
      <p className="pub_date">Publication Date: {props.publication_date}</p>
      <p className="description">{props.description}</p>
    </div>
  )
}
export default BookShowTile;
