class User < ApplicationRecord 
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :crafts
  has_many :favorite_crafts
end
