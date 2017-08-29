class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, :description, :price, presence: true
end
