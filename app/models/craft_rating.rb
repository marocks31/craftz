class CraftRating < ApplicationRecord
  belongs_to :user
  belongs_to :craft
end
