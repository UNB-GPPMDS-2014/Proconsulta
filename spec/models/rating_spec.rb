require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe Rating do
	before do
		@rating = Rating.new(idRating: "7", valeu_rating: "7",
		 user_rating: "user13", unity_procon_rating: "DF")
	end

subject { @rating }
	it { should respond_to(:idRating) }
	it { should respond_to(:valeu_rating) }
	it { should respond_to(:user_rating) }
	it { should respond_to(:unity_procon_rating) }
	it { should be_valid }
	
end