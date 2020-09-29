class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :price, :integer
  end
end
