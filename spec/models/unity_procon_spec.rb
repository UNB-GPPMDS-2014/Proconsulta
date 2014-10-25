require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe UnityProcon do
	before do
		@unity_procon = FactoryGirl.create(:unity_procon)
	end

	subject { @unity_procon }
		it { should respond_to(:address_unity_procon) }
		it { should respond_to(:name_coordinator_unity_procon) }
		it { should respond_to(:uf_procon) }
		it { should respond_to(:email_unity_procon) }
		it { should respond_to(:list_phones) }
		it { should respond_to(:position_unity_procon) }		
	it { should be_valid }

end