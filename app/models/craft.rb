class Craft < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  #scope = class method built around active record queries
  #lambda used to pass around ruby functions
  scope :user_favorites, -> (user){
    return all
    # joins(:favorite_crafts).where(user: user)
  }
end
