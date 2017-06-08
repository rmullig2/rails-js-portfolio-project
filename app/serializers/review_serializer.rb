class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :summary, :body, :user_id
end
