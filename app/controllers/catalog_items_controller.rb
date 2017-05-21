class CatalogItemsController < ApplicationController

	def index
		@catalog_items = CatalogItem.all
	end

	def show
		@catalog_item = CatalogItem.find(params[:id])
	end

end