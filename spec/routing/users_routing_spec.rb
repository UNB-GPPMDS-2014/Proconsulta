require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe UsersController, :type => :routing do
	describe "routing" do

		it "routes to #index" do 
			expect(:get => "/users").to route_to("users#index")
		end
		it "routes to #new" do
			expect(:get => "/users/new").to route_to("users#new")
		end

		it "routes to #edit" do
			expect(:get => "/users/2/edit").to route_to("users#edit", :id => "2")
		end

		it "routes to #update" do
			expect(:put => "/users/2").to route_to("users#update", :id => "2")
		end

		it "routes to #show" do
			expect(:get => "/users/2").to route_to("users#show", :id => "2")
		end

		it "routes to #destroy" do
			expect(:delete => "/users/2").to route_to("users#destroy", :id => "2")
		end

		it "routes to #create" do
      		expect(:post => "/users").to route_to("users#create")
    	end

	end

end
