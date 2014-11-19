require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UsersController, :type => :controller do 
	before do
		@user = FactoryGirl.create(:user)
	end
	
  	let(:valid_session) { {} }
  	let(:valid_attributes) { FactoryGirl.attributes_for :user, email_user: 'newuser@example.com' }    
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

	describe "POST create" do
		describe "with valid params" do
			subject { post :create, user: valid_attributes }

		 	it "increase total number of users" do
	      		expect { subject }.to change(User, :count).by(1)
	    	end
	    end

      	describe "with invalid params" do
        	subject { post :create, user: {} }

        	it "not increase number of users" do	
        		expect { subject }.to_not change(User, :count)
        	end
        end
	end

	#PUT update
	describe "PUT Update" do
		before { @user.id = "15" }
		context "with valid params" do
			before do
				put :update, user: { email_user: "novoemail@exemplo.com" }, id: @user.id
			end

	        it "assigns the requested user as @user" do
	          	assigns(:user).should eq(@user)
	        end
		end
		context "with invalid params" do
		end
	end

	describe "DELETE destroy" do
		subject { delete :destroy, id: @user.id }

		it "destroys the requested user" do
	        expect { subject }.to change(User, :count).by(-1)
      	end

	end
end