class OrdersController < ApplicationController

	def checkout
		@order = Order.new(catalog_item: CatalogItem.find(params[:catalog_item_id]), user: User.new)
	end

	def create
		@order = Order.new(order_params)
		_user = User.find_by_email(order_params[:user_attributes][:email])
		if (user != nil)
			@order.user = _user
		end
		if @order.save
			# redirect_to confirmation_path
		else
			# redirect_to checkout_path(@order.catalog_item_id)
			render '/orders/checkout/'
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
