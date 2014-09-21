require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UsersController, :type => :controller do 
	before do
		@user = User.create(name_user: "UserTes", email_user: "usertest@test.com",
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

	describe "GET show" do
    
    it "should find the account by its id" do
      get :show, :id => @user.id
      assigns[:user].name_user.should == "UserTes"
    end
  end

	describe "GET #new" do
		it "assigns a new atendimento as @atendimento" do
      	get :new, {}
      expect(assigns(:user)).to be_a_new(User)
    end

	end

	context "with invalid attributes" do
		it "does not save the new contact in the database"
		it "re-renders the :new template"
	end

	describe "GET edit" do
		it "assigns the requested place as @place" do
		get :edit, :id => @user.id
		expect(assigns(:user)).to eq(@user)
		end
	end


end