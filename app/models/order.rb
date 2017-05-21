class Order < ApplicationRecord
	after_initialize :default_values
	validates :quantity, presence: true

	belongs_to :user
	validates :user_id, presence: true

	def default_values
    self.quantity  ||= 1
  end

end
