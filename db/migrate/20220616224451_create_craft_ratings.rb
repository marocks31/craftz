class CreateCraftRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :craft_ratings do |t|
      t.integer :craft_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
