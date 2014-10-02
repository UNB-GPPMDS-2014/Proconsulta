require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe CustomerService do
	before do
		@customer_service = CustomerService.new(year_customer_service: "2014", trimester_customer_service: "2",
	 month_customer_service: "05", date_customer_service: "2014-05-23", region_customer_service: "Centro-Oeste",
	 uf_customer_service: "DF", description_customer_service: "Atendimento realizado", code_subject_customer_service: "2",
	 description_subject_customer_service: "Atendimento", code_problem_customer_service: "4",
	 description_problem_customer_service: "Duvida", genre_customer_service: "Grave", cep_customer_service: "11111111")
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