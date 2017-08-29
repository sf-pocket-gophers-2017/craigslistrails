class User < ApplicationRecord
  has_many :articles
  has_many :categories, through: :articles

  has_secure_password

  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
