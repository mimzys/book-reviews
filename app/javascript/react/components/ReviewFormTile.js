import React, {Component} from "react";

class ReviewFormTile extends Component{
  constructor(props){
    super(props);
    this.state={
      rating:1,
      comment:""
    }
    this.handleChange=this.handleChange.bind(this)
  }
  handleChange(event){
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  render(){

    let handleSubmit=(event)=>{
      event.preventDefault()
      let new_review = {
            rating: this.state.rating,
            comment: this.state.comment,
            book_id: this.props.book_id
          }
      this.props.handleSubmit(new_review)
    }
    return(
      <div>
        <div className="form">
          <form>
            <label>Ratings:</label>
            <select name='rating' value={this.state.rating} onChange={this.handleChange}>
               <option value='0' hidden></option>
               <option value='1'>1 </option>
               <option value='2'>2 </option>
               <option value='3'>3 </option>
               <option value='4'>4 </option>
               <option value='5'>5 </option>
             </select>
            <label>Comments:</label>
            <textarea name="comment" cols="40" onChange={this.handleChange} rows="5"></textarea>
            <input type="submit" value="Submit" onClick={handleSubmit}/>
          </form>
        </div>
      </div>

    )
  }
}

export default ReviewFormTile
