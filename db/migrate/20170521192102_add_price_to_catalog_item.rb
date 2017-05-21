class AddPriceToCatalogItem < ActiveRecord::Migration[5.1]
  def change
  	add_column :catalog_items, :price, :interger
  end
end
