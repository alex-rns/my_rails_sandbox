class Article < ApplicationRecord
  has_many :article_comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
