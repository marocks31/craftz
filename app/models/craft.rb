class Craft < ApplicationRecord
  belongs_to :user
  has_many :favorites
end
