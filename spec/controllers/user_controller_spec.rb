require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UsersController, :type => :controller do 
	before do
		@user = FactoryGirl.create(:user)
	end
	
  	let(:valid_session) { {} }
  	#GET#allusers
	describe "GET all users" do
		it "should get all users" do
			get :allusers, {}
			expect(assigns(:allusers)).to be(@users)
		end
	end
	#GET#index
	describe "GET index" do
		it "should get all users" do
			get :index, {}
			expect(assigns(:index)).to be(@users)
		end
	end
	#GET#show
	describe "GET show" do    
	    it "should find the account by its id" do
	      get :show, :id => @user.id
	      assigns[:user].name_user.should == "User Test"
	    end
	end
	#GET#new
	describe "GET #new" do
		it "assigns a new user as @user" do
	      	get :new, {}
	      	expect(assigns(:user)).to be_a_new(User)
	    end
	end
	#GET#edit
	describe "GET edit" do
		it "assigns the requested place as @place" do
		get :edit, :id => @user.id
		expect(assigns(:user)).to eq(@user)
		end
	end
	#GET#new
	describe "GET new" do
		it "assigns all users as @users" do
			get :new, {}, valid_session
			expect(assigns(:user)).to be_a_new(User)
		end
	end
end