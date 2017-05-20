class CreateWorkshop < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
    t.string :title
		t.text :description
    end
  end
end
