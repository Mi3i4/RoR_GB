class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  # has_many :comments
  has_many :commentators, through: :comments, source: :user
  has_one :seo, as: :seoable

  # validates :title, :body, :user, presence: true
  # validates :title, length: { minimum: 3, maximum: 1254 }
  # validates :body, length: { minimum: 3, maximum: 1500 }

  scope :written_by_moderators, -> {joins(:user).where(users: {moderator: true})}
end
