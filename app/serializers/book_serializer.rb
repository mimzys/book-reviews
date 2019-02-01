class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :reviews, :description, :publication_date

def reviews
    reviews=[]
    object.reviews.each do |review|
      reviews << {
        comment: review.comment,
        id: review.id,
        book_id: review.book_id,
        rating: review.rating,
        likes: review.likes,
        dislikes: review.dislikes
      }
    end
    return reviews
  end
end
