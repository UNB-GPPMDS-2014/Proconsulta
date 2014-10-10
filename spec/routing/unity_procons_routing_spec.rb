require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe UnityProconsController, :type  => :routing do
	describe "routing" do

	   it "routes to #index" do 
	   expect(:get => "/unity_procons").to route_to("unity_procons#index")
	   end

	   it "routes to #ranking" do 
	   expect(:get => "/ranking").to route_to("unity_procons#rankingd")
	   end
	
	end

end