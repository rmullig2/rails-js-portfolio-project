class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :summary, :body
  belongs_to :user
end
