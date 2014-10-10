require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe FaqsController, :type => :routing do
	
	it "routes to #index" do 
		expect(:get => "/faq").to route_to("faqs#index")
	end
	
end