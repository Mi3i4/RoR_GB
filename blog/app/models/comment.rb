class Comment < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :commentable, polymorphic: true
  # belongs_to :post

  # validates :body, :user, presence: true
  # validates :body, length: { minimum: 3, maximum: 1200 }
end
