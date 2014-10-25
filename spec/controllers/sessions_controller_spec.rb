require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe SessionsController, :type => :controller do 
	describe "POST destroy" do
		it "expect destroy to delete current session" do
		end

		it "expect destroy to redirect to root_url" do
		end
	end

	describe "POST create" do
		it "expect user to be finded by email" do
		end

		it "expect user finded to be signed" do
		end

		it "expect signed user to be redirected to his profile" do
		end

		it "expect invalid user to return error message" do
		end

		it "expect invalid user to rerender the session view" do
		end
	end


end