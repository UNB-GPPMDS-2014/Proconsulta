require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe CustomerServicesController, :type => :controller do 
	before do
		@customer_service = CustomerService.create(year_customer_service: "2014", 
			trimester_customer_service: "2", month_customer_service: "05", 
			date_customer_service: "2014-05-23", region_customer_service: "Centro-Oeste",
			uf_customer_service: "DF", description_customer_service: "Atendimento realizado", 
			code_subject_customer_service: "2", description_subject_customer_service: "Atendimento",
			code_problem_customer_service: "4", description_problem_customer_service: "Duvida", 
			genre_customer_service: "Grave", cep_customer_service: "11111111")
	end
	describe "GET show" do
        it "should find the account by its id" do
          get :show, :id => @customer_service.id
          assigns[:customer_service].description_subject_customer_service.should == "Atendimento"
        end
    end
end