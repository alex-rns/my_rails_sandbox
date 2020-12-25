class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_rich_text :body
  validates :title, presence: true, length: {minimum: 5}, uniqueness: true
  validates :body, uniqueness: true
end
