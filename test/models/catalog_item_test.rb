require 'test_helper'

class CatalogItemTest < ActiveSupport::TestCase

	def setup
		@catalogItem = CatalogItem.new(title: "Branding for startups", description: "Learn how to quickly develop a working brand strategy using a simple process and intuitive model.", date: Date.parse('20-05-2017'), start_time: Time.now)
	end

	test "catalog_item should be valid" do
		assert @catalogItem.valid?
	end

	test "title should be present" do
		@catalogItem.title = " "
		assert_not @catalogItem.valid?
	end

	test "description should be present" do
		@catalogItem.description = " "
		assert_not @catalogItem.valid?
	end

	test "description shouldn't be less than 30 characters" do
		@catalogItem.description = "a" * 3
		assert_not @catalogItem.valid?
	end

	test "description shouldn't be more than 500 characters" do
		@catalogItem.description = "a" * 501
		assert_not @catalogItem.valid?
	end

end