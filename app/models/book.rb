class Book < ApplicationRecord
  validates :name, presence: true
  validates :author, presence: true
  validates :isbn, presence: true
  validates :description, presence: true
  validates :publication_date, presence: true
  
end
