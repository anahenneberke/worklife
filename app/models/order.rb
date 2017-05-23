class Order < ApplicationRecord
	after_initialize :default_values
	validates :quantity, presence: true

	belongs_to :user
	belongs_to :catalog_item
	validates :user, presence: true
	validates :catalog_item, presence: true

	accepts_nested_attributes_for :user
  validates_associated :user

	def default_values
	    self.quantity  ||= 1
	end

end
