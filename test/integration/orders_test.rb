require 'test_helper'

class OrdersTest < ActionDispatch::IntegrationTest

	def setup
		@catalog_item = CatalogItem.create(
				title: "Digital Marketing",
				description: "In this 10-week course, students will learn to plan and execute a marketing campaign to acquire and engage users.",
				date: Date.parse("18-05-2018"),
				start_time: Time.now,
				end_time: Time.now,
				price: 25)
		@catalog_item.save
	end

	test "should get checkout page" do
		get checkout_path(@catalog_item)
		assert_template 'orders/checkout'
	end

	test "reject order without user params" do
		get checkout_path(@catalog_item)
		assert_template 'orders/checkout'
		assert_no_difference 'Order.count' do
			post orders_path, params: { order: { catalog_item_id: @catalog_item.id, user: { name: " ", email: " ", phone_number: " "}}}
		end
		assert_redirected_to(checkout_path(@catalog_item))
	end

end
