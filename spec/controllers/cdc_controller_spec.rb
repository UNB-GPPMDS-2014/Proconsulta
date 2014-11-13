require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe CdcsController, :type => :controller do 
	describe "GET index" do
        it "should list the cdc" do
          get :index 
          expect(response).to have_http_status(:success)
        end
    end
end