class User < ApplicationRecord
  validates :username, presence: true, length: { in: 5..25 }, uniqueness: { message: 'already taken' }
  validates :email, presence: true, length: { maximum: 30 }
  validates :password, presence: true, length: { minimum: 5 }
  has_many :posts
  has_many :comments
end
