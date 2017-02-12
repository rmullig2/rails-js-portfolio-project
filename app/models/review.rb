class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :rating, :summary, :user, :book, presence: true
  scope :user_review, ->(u) { where("user_id = ?", u.id) }
  scope :book_review, ->(b) { where("book_id = ?", b.id) }
end
