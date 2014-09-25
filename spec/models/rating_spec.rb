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


	describe "blank idRating" do
		before { @rating.idRating = " " }
		it { should_not be_valid }
	end

	describe "blank valeu_rating" do
		before { @rating.valeu_rating = " "}
		it { should_not be_valid}
	end

	describe "blank unity_procon_rating" do
		before { @rating.unity_procon_rating = " "}
		it { should_not be_valid}
	end

	describe "valeu_rating too long " do
		before { @rating.valeu_rating > 10 }
		it { should_not be_valid }
	end

	describe "valeu_rating too short " do
		before { @rating.valeu_rating < 0 }
		it { should_not be_valid }
	end
	
end