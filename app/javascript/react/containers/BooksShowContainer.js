import React, { Component } from 'react';
import { browserHistory, Link } from 'react-router';
import BookShowTile from '../components/BookShowTile';
import ReviewShowTile from '../components/ReviewShowTile';
import ReviewFormTile from '../components/ReviewFormTile';

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
          name: responseBody.book.name,
          author: responseBody.book.author,
          description: responseBody.book.description,
          publication_date: responseBody.book.publication_date,
          reviews: responseBody.book.reviews
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
        <ReviewFormTile
          key={this.props.params.id}
          book_id={this.props.params.id}
          handleSubmit={this.handleSubmit}
        />
      </div>
    );
  }
}
export default BooksShowContainer;
