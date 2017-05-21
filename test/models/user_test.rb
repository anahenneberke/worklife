require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name: "Rodrigo", email: "rodrigo@gmail.com", phone_number: "935776653")
	end

    test "user should be valid" do
		assert @user.valid?
	end

	test "name should be present" do
		@user.name = " "
		assert_not @user.valid?
	end

	test "email should be present" do
		@user.email = " "
		assert_not @user.valid?
	end

	test "phone_number should be present" do
		@user.phone_number = " "
		assert_not @user.valid?
	end

	test "name should be less or equals than 30 characters" do
		@user.name = "a" * 31
		assert_not @user.valid?
	end

	test "email shouldn't be more than 255 characters" do
		@user.email = "a" * 256
		assert_not @user.valid?
	end

	test "email format should be valid" do
		valid_emails = %w[user@example.com first.last@gmail.com first+last@company.co.uk]
		valid_emails.each do |email|
			@user.email = email
			assert @user.valid?, "#{email.inspect} should be valid"
		end
	end

	test "email format should not be invalid" do
		invalid_emails = %w[user@example first.last@gmail,com first+last@company. joe@bar+foo.com]
		invalid_emails.each do |email|
			@user.email = email
			assert_not @user.valid?, "#{email.inspect} should be invalid"
		end
	end

	test "email should be unique and case insensitive" do
		duplicate_user = @user.dup
		duplicate_user.email.upcase!
		@user.save
		assert_not duplicate_user.valid?
	end

	test "email should be lower case before saving" do
		email = "UsEr@Gmail.com"
		@user.email = email
		@user.save
		assert_equal email.downcase, @user.reload.email
	end

end
