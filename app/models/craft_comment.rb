class CraftComment < ApplicationRecord
  belongs_to :user
  belongs_to :craft
end
