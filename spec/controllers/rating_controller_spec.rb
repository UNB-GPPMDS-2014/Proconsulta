require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
include SessionsHelper

describe RatingsController, :type => :controller do

	before do
		@user = FactoryGirl.create(:user)
	end

	describe "GET index" do
		#controller.index
		it "expect get to return sucess" do
		end
		it "expect get to not redirect if user is signed_in" do
			sign_in(@user)
			get :index
			response.should_not be_redirect
		end
		it "expect get to redirect if user isn't signed_in" do
			sign_out
			get :index
			response.should be_redirect
		end
	end 
	


end