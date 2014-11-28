require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe CdcsController, :type => :routing do
	
	it "routes to #index" do 
		expect(:get => "/cdc").to route_to("cdcs#index")
	end
	
end
