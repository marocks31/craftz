class AddUniqueIndexToFavoriteCrafts < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!
  def change
    add_index :favorite_crafts, [:user_id, :craft_id], unique: true, algorithm: :concurrently
  end
#  keeps database safer
# users cannot favorite a craft twice
end
