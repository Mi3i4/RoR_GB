class User < ApplicationRecord
  validates ​:​name​, ​presence​:​​true
  validates :name, length:{minimum:3, maximum:15}
  validates ​:​name​, ​uniqueness​:​​true

  validates ​:email, ​presence​:​​true
  validates ​:email, ​uniqueness​:​​true
end
