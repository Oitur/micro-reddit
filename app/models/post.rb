class Post < ApplicationRecord
  validates :title, presence:true
  validates :content, presence:true
  validates_associated :user
  belongs_to :user
  has_many :comments
end
