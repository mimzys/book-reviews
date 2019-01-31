class Review < ApplicationRecord
  validates_presence_of :rating, :likes, :dislikes, :book_id, :user_id
  validates_inclusion_of :rating, :in => 1..5
  validates_numericality_of :likes, greater_than_or_equal_to: 0
  validates_numericality_of :dislikes, greater_than_or_equal_to: 0
  belongs_to :book, required: true
  belongs_to :user, required: true
end
