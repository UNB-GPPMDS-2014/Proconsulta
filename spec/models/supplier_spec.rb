require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe Supplier do
	before do
		@supplier = Supplier.new(type_supplier: "Pessoa Jurídica", social_reason_supplier: "Importante",
		 fantasy_name_supplier: "Tchanananas", cnpj: "222777-13", cnaep_main_code_supplier: "blablabla",
		 description_cnaep_code_supplier: "blablablas")
	end

	subject { @rating }
		it { should respond_to(:type_supplier) }
		it { should respond_to(:social_reason_supplier) }
		it { should respond_to(:fantasy_name_supplier) }
		it { should respond_to(:cnpj) }
		it { should respond_to(:cnaep_main_code_supplier) }
		it { should respond_to(:description_cnaep_code_supplier) }

		it { should be_valid }


	describe "blank type_supplier" do
		before { @supplier.type_supplier = " " }
		it { should_not be_valid }
	end
	
	describe "blank social_reason_supplier" do
		before { @supplier.social_reason_supplier = " " }
		it { should_not be_valid }
	end

	describe "blank fantasy_name_supplier" do
		before { @supplier.fantasy_name_supplier = " " }
		it { should_not be_valid }
	end

	describe "blank cnpj" do
		before { @supplier.cnpj = " " }
		it { should_not be_valid }
	end

	describe "blank cnaep_main_code_supplier" do
		before { @supplier.cnaep_main_code_supplier = " " }
		it { should_not be_valid }
	end

	describe "blank description_cnaep_code_supplier" do
		before { @supplier.description_cnaep_code_supplier = " " }
		it { should_not be_valid }
	end
end