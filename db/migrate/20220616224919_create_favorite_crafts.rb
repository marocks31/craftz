class CreateFavoriteCrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_crafts do |t|
      t.integer :craft_id
      t.integer :user_id

      t.timestamps
    end
  end
end
