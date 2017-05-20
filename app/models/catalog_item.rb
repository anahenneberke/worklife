class CatalogItem < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 30, maximum: 500 }
	validates :date, presence: true
	validates :start_time, presence: true
end
