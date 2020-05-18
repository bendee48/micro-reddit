class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :body, :user_id, presence: true
end
