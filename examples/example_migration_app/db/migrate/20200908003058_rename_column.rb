class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :foods, :country, :country_of_origin
  end
end
