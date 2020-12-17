class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}, uniqueness: true
  validates :body, length: {in: 5..50}, uniqueness: true
end
