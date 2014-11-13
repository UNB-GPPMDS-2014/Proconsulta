require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe CustomerServicesController, :type => :controller do 
	before do
		@customer_service = FactoryGirl.create(:customer_service)
	end
	describe "GET show" do
        it "should find the customer_service by its id" do
          get :show, :id => @customer_service.id
          assigns[:customer_service].description_subject_customer_service.should == "Atendimento"
        end
    end
	describe "GET index" do
        it "should list all the customer_service" do
          get :index 
          expect(response).to have_http_status(:success)
        end
    end
  describe "GET list" do
        it "should find all the customer_service" do
          get :list 
          expect(response).to have_http_status(:success)
        end
    end  

end