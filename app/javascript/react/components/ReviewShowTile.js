import React from 'react';
import { browserHistory, Link } from 'react-router';

const ReviewShowTile = (props) => {
  return(
    <div className="review">
      <h5 className="rating">Rating: {props.rating}</h5>
      <p className="comment">Comment: {props.comment}</p>
      <p className="likes-and-dislikes">
        <i className="fa fa-arrow-up" aria-hidden="true">{props.likes}</i>
        &emsp;
        <i className="fa fa-arrow-down" aria-hidden="true">{props.dislikes}</i>
      </p>
    </div>
  )
}
export default ReviewShowTile;
