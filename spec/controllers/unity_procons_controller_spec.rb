require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UnityProconsController, :type => :controller do 
  	before do
    		@unity_procon = UnityProcon.create(address_unity_procon: "SQS BRASILIA", 
          name_coordinator_unity_procon: "Cordenador", uf_procon: "DF", 
          email_unity_procon: "procon@procon.com.br", list_phones: "123123123")
  	end

    describe "GET show" do
        it "should find the account by its id" do
          get :show, :id => @unity_procon.id
          assigns[:unity_procon].address_unity_procon.should == "SQS BRASILIA"
        end
    end

    describe "GET index" do
        it "expect index to be valid" do
          get :index, {}
          expect(response).to have_http_status(:success)
        end
    end

    describe "GET ranking" do
        it "expect ranking to be valid" do
          get :ranking, {}
          expect(response).to have_http_status(:success)
      end
    end
    
end