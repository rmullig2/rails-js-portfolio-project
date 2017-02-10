class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :rating, :summary, :user, :book, presence: true
end
