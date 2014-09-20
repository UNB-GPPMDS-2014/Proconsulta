require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UsersController, :type => :controller do 
	before do
		@user = User.new(name_user: "UserTes", email_user: "usertest@test.com",
		 password: "teste1234", adress_user: "teste",
		 password_confirmation: "teste1234")
	end

	subject { @user }
	it { should respond_to(:name_user) }
	it { should respond_to(:email_user) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should be_valid }

	describe "GET #show" do
		it "assigns the requested user to @user"
		it "renders the :show template"
	end

	describe "GET #new" do
		it "assigns a new User to @user"
		it "renders the :new template"
		it { should be_valid }
	end

	context "with invalid attributes" do
		it "does not save the new contact in the database"
		it "re-renders the :new template"
	end

end
