class AddPriceToWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_column :warehouses, :price, :string
  end
end
