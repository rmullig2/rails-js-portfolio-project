class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :title, :author, :year, presence: true
end
