class AddUserIdToCrafts < ActiveRecord::Migration[7.0]
  def change
    add_column :crafts, :user_id, :integer
  end
end
