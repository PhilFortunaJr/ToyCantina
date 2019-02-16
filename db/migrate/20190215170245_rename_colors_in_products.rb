class RenameColorsInProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :color, :year
  end
end
