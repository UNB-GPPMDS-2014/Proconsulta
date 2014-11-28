class UfHelper < ActiveRecord::Base
	
	attr_accessible :description_uf, :quantity_uf, :quantity_direct_complaint, 
	:quantity_preliminary_service, :quantity_calculation, :quantity_cip, :quantity_forward_supervision, 
	:quantity_initial_jec, :quantity_letter_complaint, :quantity_simple_consult
end
