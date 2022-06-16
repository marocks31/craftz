class CreateCraftComments < ActiveRecord::Migration[7.0]
  def change
    create_table :craft_comments do |t|
      t.integer :user_id
      t.integer :craft_id
      t.string :comment

      t.timestamps
    end
  end
end
