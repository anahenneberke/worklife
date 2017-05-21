class Order < ApplicationRecord
	after_initialize :default_values
	validates :quantity, presence: true

	belongs_to :user
	belongs_to :catalog_item
	validates :user_id, presence: true
	validates :catalog_item_id, presence: true

	def default_values
	    self.quantity  ||= 1
	  end

end
