require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UsersController, :type => :controller do 
	before do
		@user = User.create(name_user: "UserTes", email_user: "usertest@test.com",
		 password: "teste1234", address_user: "teste",
		 password_confirmation: "teste1234")
	end
	let(:valid_attributes) {
    	skip(name_user: "UserTest", email_user: "usertest@test.com", 
    		password: "teste1234", adress_user: "teste")
  	}

  	let(:invalid_attributes) {
    	skip(name_user: "", email_user: "emailerrado", 
    		password: "zzzz", adress_user: "")
  	}

  	let(:valid_session) { {} }

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

		describe "GET #new" do
			it "assigns a new atendimento as @atendimento" do
	      	get :new, {}
	      	expect(assigns(:user)).to be_a_new(User)
	    	end
		end

		context "with invalid attributes" do
		end

	end

	describe "GET edit" do
		it "assigns the requested place as @place" do
		get :edit, :id => @user.id
		expect(assigns(:user)).to eq(@user)
		end
	end

	describe "GET index" do
		it "assigns all users as @users" do
			user = User.create! valid_attributes
			get :index, {}, valid_session
			expect(assigns(:users)).to eq ([user])
		end
	end

	describe "GET show" do
		it "assigns all users as @users" do
			user = User.create! valid_attributes
			get :show, {}, valid_attributes
			expect(assigns(:users)).to eq ([user])
		end
	end

	describe "GET new" do
		it "assigns all users as @users" do
			get :new, {}, valid_session
			expect(assigns(:user)).to be_a_new(User)
		end
	end

	describe "POST create" do
		describe "with valid params" do
			it "creates a new User" do
				expect {
          			post :create, {:user => valid_attributes}, valid_session
        			}.to change(User, :count).by(1)
      		end
      	end
    end


end