class Comment < ApplicationRecord
  validates :content, presence:true
  validates_associated :user
  validates_associated :post
  belongs_to :user
  belongs_to :post
end
