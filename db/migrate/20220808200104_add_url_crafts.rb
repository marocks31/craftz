class AddUrlCrafts < ActiveRecord::Migration[7.0]
  def change
add_column :crafts, :image, :string
  end
end
