class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :author, :publication_date
end
