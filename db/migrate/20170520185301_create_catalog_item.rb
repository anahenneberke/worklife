class CreateCatalogItem < ActiveRecord::Migration[5.1]
  def change
    create_table :catalog_items do |t|
		  t.string :title
			t.text :description
			t.date :date
			t.time :start_time
			t.time :end_time
			t.timestamps
    end
  end
end
