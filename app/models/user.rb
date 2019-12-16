class User < ApplicationRecord
  validates :username, presence:true, length:{maximum:16, minimum:4}, uniqueness:{case_sensitive:false}
  validates :email, presence:true, format:{with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}, uniqueness:{case_sensitive:false}
  has_many :posts
  has_many :comments
end
