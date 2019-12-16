# frozen_string_literal: true

class User < ApplicationRecord
  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :username, presence: true, length: { maximum: 16, minimum: 4 }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEXP }, uniqueness: { case_sensitive: false }
  has_many :posts
  has_many :comments
end
