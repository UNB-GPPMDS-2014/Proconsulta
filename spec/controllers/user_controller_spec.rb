require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UsersController, :type => :controller do 
	before do
		@user = User.create(name_user: "UserTes", email_user: "usertest@test.com",
		 password: "teste1234", address_user: "DF",
		 password_confirmation: "teste1234")
	end
	

  	let(:valid_session) { {} }

	subject { @user }
	it { should respond_to(:name_user) }
	it { should respond_to(:email_user) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should be_valid }
	describe "GET all users" do

		it "should get all users" do
			get :allusers, {}
			expect(assigns(:allusers)).to be(@users)
		end
	end
	describe "GET index" do

		it "should get all users" do
			get :index, {}
			expect(assigns(:index)).to be(@users)
		end
	end

	describe "GET show" do
    
	    it "should find the account by its id" do
	      get :show, :id => @user.id
	      assigns[:user].name_user.should == "UserTes"
	    end

		describe "GET #new" do
			it "assigns a new user as @user" do
	      	get :new, {}
	      	expect(assigns(:user)).to be_a_new(User)
	    	end
		end

	end

	describe "GET edit" do
		it "assigns the requested place as @place" do
		get :edit, :id => @user.id
		expect(assigns(:user)).to eq(@user)
		end
	end

	describe "GET new" do
		it "assigns all users as @users" do
			get :new, {}, valid_session
			expect(assigns(:user)).to be_a_new(User)
		end
	end

end