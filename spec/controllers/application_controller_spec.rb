require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
include SessionsHelper

describe ApplicationController, :type => :controller do 
	before do
    	@user = FactoryGirl.create(:user)
  	end
	it "expect handle_unverified_request not signout user" do
		sign_in(@user)
		controller.handle_unverified_request
		expect(signed_in?).to equal(!nil)
	end


end