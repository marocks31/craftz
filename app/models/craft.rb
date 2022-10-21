class Craft < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  #scope = class method built around active record queries
  #lambda used to pass around ruby functions
  scope :user_favorites, -> (user){
    return all
    # joins(:favorite_crafts).where(user: user)
  }
  def directions_list
    array_of_directions = craft.description.split(/[0-9]+\.+ /)
    final_array = []
    array_of_directions.each do |step|
      if step.length > 0
        final_array << step
      end
    end
    return final_array
  end
end
