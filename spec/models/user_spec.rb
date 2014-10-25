require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe User do
    let(:user) { FactoryGirl.create(:user) }
	before do
		@user = User.new(name_user: "UserTest", email_user: "usertest@test.com",
		 password: "teste1234", address_user: "DF",
		 password_confirmation: "teste1234")
	end

	subject { @user }
	it { should respond_to(:name_user) }
    it { should respond_to(:address_user) }
	it { should respond_to(:email_user) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
    it { should respond_to(:remember_token) }
    it { should respond_to(:authenticate) }

	it { should be_valid }

	describe "blank user_name" do
		before { @user.name_user = " " }
		it { should_not be_valid }
	end
	describe "blank email" do
		before { @user.email_user = " "}
		it { should_not be_valid}
	end
	describe "name_user too long " do
		before { @user.name_user = "a"*55 }
		it { should_not be_valid }
	end
	describe "invalid email format" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
            foo@bar_baz.com foo@bar+baz.com]
      		addresses.each do |invalid_address|
      			@user.email_user = invalid_address
      			expect(@user).not_to be_valid
      		end
      	end
    end
    describe "email already taken" do
    	before do
    		user_with_same_email = @user.dup
    		user_with_same_email.email_user = @user.email_user.upcase
    		user_with_same_email.save
    	end

    	it { should_not be_valid }
    end
    describe "password blank" do
    	before do
    		@user = User.new(name_user: "TesteUser",
    		 email_user: "teste@teste.com", password: " ",
    		 password_confirmation: " ")
    	end
    	it { should_not be_valid }
    end

    describe "password_confirmation isn't equal password" do
    	before do
    	 	@user = User.new(name_user: "testeuser", 
    	 		email_user: "teste@teste.com", password: "teste1234", 
    	 		password_confirmation: "blablabla1234")
     	end
    	it { should_not be_valid }
    end

    describe "remember token" do
        before { @user.save }
        its(:remember_token) { should_not be_blank }
    end
end