class AddSubtitleToWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_column :warehouses, :subtitle, :string
  end
end
