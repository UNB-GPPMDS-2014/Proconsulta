require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
include SessionsHelper

describe UnityProconsController, :type => :controller do 
  	before do
    	@unity_procon = FactoryGirl.create(:unity_procon)
      @user = FactoryGirl.create(:user)
      @unity_procon_test = UnityProcon.first

  	end

    #GET
    describe "GET show" do
        it "should find the account by its id" do
          get :show, :id => @unity_procon.id
          assigns[:unity_procon].address_unity_procon.should == "Shopping Venancio"
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
    describe "POST update" do
     it "should accept nested attributes for units" do
     expect {
       @unity_procon_test.update_attributes("ratings_attributes"=>{"0"=>{"value_rating"=>"3", "description_rating"=>"esse e bao"}})
     }.to change { Rating.count }.by(1)
end
end 

end