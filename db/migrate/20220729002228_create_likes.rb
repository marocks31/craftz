class CreateLikes < ActiveRecord::Migration[7.0]
  def post
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end

    # user can't like same post multiple times
    add_index :likes, [:user_id, :post_id], unique: true
  end
end
