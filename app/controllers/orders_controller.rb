class OrdersController < ApplicationController

	def checkout
		@order = Order.new(catalog_item: CatalogItem.find(params[:catalog_item_id]), user: User.new)
	end

	def create
		@user = User.new
		@order = @user.orders.build(order_params)
		if @order.save
			# redirect_to confirmation_path
			logger.debug "SAVED"
		else
			logger.debug @order.errors
			# redirect_to error_path
		end
	end

	def confirmation
		@order = Order.find(params[:order_id])
	end

	private
		def user_params
	    [:name, :email, :phone_number]
	  end

		def order_params
			params.require(:order).permit(:id, :catalog_item_id, user_attributes: user_params)
		end

end
