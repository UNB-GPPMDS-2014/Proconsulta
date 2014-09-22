require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "Should not save without name_user, password_user, adress_user, email_user" do
		user_first_test = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => "teste", :email_user => "nil@nil.com")
		assert user_first_test.valid?
		#when every attribute isn't nil ,the password is higher than 6 chars and the email is in the correct regex, the user is true
		user_second_test = User.new(:name_user => nil, :password_user => "teste1234", :adress_user => "teste", :email_user => "nil@nil.com")
		assert !user_second_test.valid?
		#now only the name_user is incorrect, but is enough to be false
		user_third_test = User.new(:name_user => "teste", :password_user => "teste", :adress_user => "teste", :email_user => "nil@nil.com")
		assert !user_third_test.valid?
		#now the only thing that is wrong is the fact that the password_user is lower than 6 chars
		user_fourth_test = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => nil, :email_user => "nil@nil.com")
		assert !user_fourth_test.valid?
		#only the adress isn't ok now, what is enough to be false
		user_fifth_test = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => "teste", :email_user => "teste")
		assert !user_fifth_test.valid?
		#email_user with different regex
		user_sixth_test = User.new(:name_user => "a"*51, :password_user => "teste1234", :adress_user => "teste", :email_user => "teste@teste.com")
		assert !user_sixth_test.valid?
		#name_user too long
		user_seventh_test = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => "a"*100, :email_user => "teste@teste.com")
		assert !user_seventh_test.valid?
		#adress too long
		user_8th_test = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => "teste", :email_user => "a"*70+"@teste.com")
		assert !user_8th_test.valid?
		#email_user too long
		b = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => "teste", :email_user => "nil@nil.com")
		c = User.new(:name_user => "teste", :password_user => "teste1234", :adress_user => "teste", :email_user => "nil@nil.com")
		c.save
		assert c.valid?

	end
end
