class User < ApplicationRecord
  has_secure_password

  has_many :reviews
  has_many :recipes, dependent: :destroy
  
  validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
  # validates :username, uniqueness: true
  # validates :username, length: { minimum: 4 }
end
