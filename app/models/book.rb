class Book < ApplicationRecord
  validates_presence_of :name, :author, :isbn, :description, :publication_date
  validates_uniqueness_of :isbn, case_sensitive: false
  validates_numericality_of :isbn
  validates_length_of :isbn, minimum: 10, maximum: 13
  has_many :reviews
end
