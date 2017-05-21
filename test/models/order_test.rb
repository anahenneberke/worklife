require 'test_helper'

class OrderTest < ActiveSupport::TestCase

	def setup
		@user = User.create(name: "John", email: "john@example.com", phone_number: "123123123")
		@order = @user.orders.build
	end

	test "order without a user should be invalid" do
		@order.user_id = nil
		assert_not @order.valid?
	end
	
  test "order should be valid" do
		assert @order.valid?
	end

	test "quantity should be present" do
		@order.quantity = nil
		assert_not @order.valid?
	end

end
