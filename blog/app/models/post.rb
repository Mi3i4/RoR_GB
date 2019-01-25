class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  # has_many :comments
  has_many :commentators, through: :comments, source: :user

  validates :title, :body, :user, presence: true
  validates :title, length: { minimum: 3, maximum: 1254 }
  validates :body, length: { minimum: 3, maximum: 1500 }
end
