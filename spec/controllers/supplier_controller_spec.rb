require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe SuppliersController, :type => :controller do
  	before do
    	@supplier = FactoryGirl.create(:supplier)
  	end

    describe "GET show" do
        it "should find the account by its id" do
          get :show, :id => @supplier.id
          assigns[:supplier].type_supplier.should == "PessoaJuridica"
        end
    end

    describe "GET index" do
    	it "expect page to work" do
    		get :index
    		expect(response).to have_http_status(:success)
    	end
    end
    
end