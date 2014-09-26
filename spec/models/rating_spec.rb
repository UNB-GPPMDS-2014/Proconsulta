require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe Rating do
	before do
		@rating = Rating.new(idRating: "1", value_rating: "7",
		 user_rating: "user13", unity_procon_rating: "DF", descripion_rating: "blablabla")
	end

	subject { @rating }
		it { should respond_to(:idRating) }
		it { should respond_to(:value_rating) }
		it { should respond_to(:user_rating) }
		it { should respond_to(:unity_procon_rating) }
		it { should respond_to(:descripion_rating) }

		it { should be_valid }


	describe "blank idRating" do
		before { @rating.idRating = " " }
		it { should_not be_valid }
	end
	
end