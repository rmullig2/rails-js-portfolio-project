class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :year, :fiction
  has_many :reviews
end
