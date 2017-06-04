class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :summary, :body
end
