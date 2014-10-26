require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe ApplicationHelper do
	it "expect base title to be proconsulta if page title = blank" do
		full_title("").should == "PROCONSULTA"
	end
	it "expect base title to be another base title if page title isn't blank" do
		full_title("test_title").should == "PROCONSULTA | test_title"
	end
end
