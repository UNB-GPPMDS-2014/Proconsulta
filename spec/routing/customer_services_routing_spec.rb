require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe CustomerServicesController, :type => :routing do
	
	it "routes to #index" do 
		expect(:get => "/customer_services").to route_to("customer_services#index")
	end
	
end
