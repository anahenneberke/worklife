require 'test_helper'

class OrderTest < ActiveSupport::TestCase

	def setup
		@user = User.create(name: "John", email: "john@example.com", phone_number: "123123123")
		@catalogItem = CatalogItem.create(title: "Branding for startups",
			description: "Learn how to quickly develop a working brand strategy using a simple process and intuitive model.",
			date: Date.parse('20-05-2017'),
			start_time: Time.now,
			price: 25)
		@order = Order.new(user: @user, catalog_item: @catalogItem)
	end

	test "order should be valid" do
		assert @order.valid?
	end

	test "order without a user should be invalid" do
		@order.user_id = nil
		assert_not @order.valid?
	end

	test "order without a catalog_item should be invalid" do
		@order.catalog_item_id = nil
		assert_not @order.valid?
	end

	test "quantity should be present" do
		@order.quantity = nil
		assert_not @order.valid?
	end

end
