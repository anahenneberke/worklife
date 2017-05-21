class AddCatalogItemIdToOrders < ActiveRecord::Migration[5.1]
  def change
	add_column :orders, :catalog_item_id, :integer
  end
end
