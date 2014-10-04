require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe UnityProcon do
	before do
		@unity_procon = UnityProcon.new(address_unity_procon: "Shopping Venancio", name_coordinator_unity_procon: "Roberto",
		 uf_procon: "DF", email_unity_procon: "procon@procon.com", list_phones: "32323232")
	end

	subject { @unity_procon }
		it { should respond_to(:address_unity_procon) }
		it { should respond_to(:name_coordinator_unity_procon) }
		it { should respond_to(:uf_procon) }
		it { should respond_to(:email_unity_procon) }
		it { should respond_to(:list_phones) }

end