class User < ApplicationRecord
  has_many: likes
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
