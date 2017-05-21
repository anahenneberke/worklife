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
	end

	test "should get checkout page" do
		get checkout_path(@catalog_item)
		assert_response :success
	end

end
