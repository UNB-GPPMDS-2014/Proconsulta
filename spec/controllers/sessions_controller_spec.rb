require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe SessionsController, :type => :controller do 
	
	before do
		@user = User.create(name_user: "Test", email_user: "test@hotmail.com",
		 password: "7777777", adress_user: "test",
		 password_confirmation: "7777777")
	end

	let(:valid_attributes) {
    	skip(name_user: "Test", email_user: "test@hotmail.com", 
    		password: "7777777", adress_user: "test")
  	}

  	let(:invalid_attributes) {
    	skip(name_user: "", email_user: "incorrect", 
    		password: "zzzz", adress_user: "")
  	}

	subject { @user }
	it { should respond_to(:name_user) }
	it { should respond_to(:email_user) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should be_valid }


end