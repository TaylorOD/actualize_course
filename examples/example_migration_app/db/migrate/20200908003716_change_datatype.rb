class ChangeDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :foods, :price, :string
  end
end
