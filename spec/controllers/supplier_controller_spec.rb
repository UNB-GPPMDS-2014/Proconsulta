require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe SuppliersController, :type => :controller do
  	before do
    		@supplier = Supplier.create(type_supplier: "SupplierTes", social_reason_supplier: "Razao",
    		 fantasy_name_supplier: "Sup", cnpj: "12000184002", cnaep_main_code_supplier: "123123123",
         description_cnaep_code_supplier: "46456456546")
  	end

    describe "GET show" do
        it "should find the account by its id" do
          get :show, :id => @supplier.id
          assigns[:supplier].type_supplier.should == "SupplierTes"
        end
    end

    describe "GET index" do
        it "should find the account by its id" do
          get :index, :id => @supplier.id
          assigns[:supplier].type_supplier.should == "SupplierTes"
        end
    end

end