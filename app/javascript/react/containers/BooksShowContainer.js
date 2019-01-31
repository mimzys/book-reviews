import React, { Component } from 'react';
import { browserHistory, Link, Route, RouteHandler } from 'react-router';
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
      reviews: [],
      book_id: ""

   };
   this.postReview=this.postReview.bind(this)
   this.handleSubmit= this.handleSubmit.bind(this)
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
          reviews: responseBody.reviews,
          book_id: bookId
        })
      })
    }





    postReview(review){
      fetch(`/api/v1/reviews/`, {
        method: 'POST',
        body: JSON.stringify(review),
        credentials: 'same-origin',
        headers:{
          'Accept' : 'application/json',
          'Content-Type' : 'application/json'
        }
      })
      .then(response => {
        if(response.ok){
          return response;
        } else {
          let errorMessage= `${response.status} (${response.statusText})`, error = new Error(errorMessage)
          throw(error)
        }
      })
      .then(response => response.json())
      .then(body=>{
        let current_reviews = this.state.reviews
        let new_reviews = current_reviews.concat(body)
        this.setState({ reviews: new_reviews })
      })
    }



  handleSubmit(formPayLoad){
    let review_format = {
      book_id: this.state.id,
      rating: formPayLoad.rating,
      comment: formPayLoad.comment
    }
    console.log(review_format)
    this.postReview(formPayLoad)
  }

  // handleSubmit(event){
  //   event.preventDefault()
  //   let formPayLoad={
  //     id:'',
  //     rating: this.state.review["rating"]
  //     comment
  //   }
  // }


  render(){
    let reviewsArray
    if (this.state.reviews) {
     reviewsArray = this.state.reviews.map((review, index) => {
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
      <div>
        <BookShowTile
          key={this.props.params.id}
          name={this.state.name}
          author={this.state.author}
          publication_date={this.state.publication_date}
          description={this.state.description}
        />
      </div>
      <div>
        {reviewsArray}
      </div>
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
