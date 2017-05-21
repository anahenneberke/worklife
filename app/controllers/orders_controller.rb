class OrdersController < ApplicationController

	def checkout
		@catalog_item = CatalogItem.find(params[:catalog_item_id])
		@order = Order.new(catalog_item: @catalog_item)
	end

end