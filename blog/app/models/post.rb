class Post < ApplicationRecord
  validates ​:title, presence:true
  validates :title, length:{minimum:3, maximum:254}

  validates :body, presence:true
  validates :body, length:{minimum:3}

  belongs_to :user

end
