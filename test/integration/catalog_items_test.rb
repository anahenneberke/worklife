require 'test_helper'

class CatalogItemsTest < ActionDispatch::IntegrationTest
	
	def setup
		@catalog_item1 = CatalogItem.create(
				title: "Digital Marketing",
				description: "In this 10-week course, students will learn to plan and execute a marketing campaign to acquire and engage users.",
				date: Date.parse("18-05-2018"),
				start_time: Time.now,
				end_time: Time.now)
		@catalog_item2= CatalogItem.create(
				title: "Break Into Coding",
				description: "Join us for a talk where you'll learn how to get started in coding!",
				date: Date.parse("18-05-2018"),
				start_time: Time.now,
				end_time: Time.now)
	end

	test "should get catalog_items index" do
		get catalog_items_path
		assert_response :success
	end

	test "should get catalog_items listing" do
		get catalog_items_path
		assert_template 'catalog_items/index'
		assert_select "a[href=?]", catalog_item_path(@catalog_item1), text: @catalog_item1.title
		assert_select "a[href=?]", catalog_item_path(@catalog_item2), text: @catalog_item2.title
	end

	test "should get catalog_item show action" do
		get catalog_item_path(@catalog_item1)
		assert_template 'catalog_items/show'
		assert_match @catalog_item1.title, response.body
		assert_match @catalog_item1.description, response.body
	end

end
