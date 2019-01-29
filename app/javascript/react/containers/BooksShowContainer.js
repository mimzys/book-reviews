import React, { Component } from 'react';
import { browserHistory, Link } from 'react-router';
import BookShowTile from '../components/BookShowTile';
import ReviewShowTile from '../components/ReviewShowTile';

class BooksShowContainer extends Component {
  constructor(props){
    super(props);
    this.state={
      name: "",
      author: "",
      description: "",
      publication_date: "",
      reviews: []
   };
  }
  componentDidMount(){
    let bookId = this.props.params.id;
    fetch(`/api/v1/books/${bookId}.json`)
      .then(response => {
        let responseBody = response.json()
        return responseBody
      }).then(responseBody => {
        this.setState({
          name: responseBody.name,
          author: responseBody.author,
          description: responseBody.description,
          publication_date: responseBody.publication_date,
          reviews: responseBody.reviews
        })
      })
    }
  render(){
    let reviewsArray
    if (this.state.reviews) {
     reviewsArray = this.state.reviews.map(     (review, index) => {
      return(
        <ReviewShowTile
          key={index}
          rating={review.rating}
          comment={review.comment}
          likes={review.likes}
          dislikes={review.dislikes}
        />
      )
    })
  }

    return(
      <div>
      <BookShowTile
        key={this.props.params.id}
        name={this.state.name}
        author={this.state.author}
        publication_date={this.state.publication_date}
        description={this.state.description}
        />
      {reviewsArray}
      </div>
    );
  }
}
export default BooksShowContainer;
