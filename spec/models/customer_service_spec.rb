require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe CustomerService do
	before do
		@customer_service = FactoryGirl.create(:customer_service)
	end

	subject { @customer_service }
		it { should respond_to(:year_customer_service) }
		it { should respond_to(:trimester_customer_service) }
		it { should respond_to(:month_customer_service) }
		it { should respond_to(:date_customer_service) }
		it { should respond_to(:region_customer_service) }
		it { should respond_to(:uf_customer_service) }
		it { should respond_to(:description_customer_service) }
		it { should respond_to(:code_subject_customer_service) }
		it { should respond_to(:description_subject_customer_service) }
		it { should respond_to(:code_problem_customer_service) }
		it { should respond_to(:description_problem_customer_service) }
		it { should respond_to(:genre_customer_service) }
		it { should respond_to(:cep_customer_service) }
end