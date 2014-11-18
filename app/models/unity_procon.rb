class UnityProcon < ActiveRecord::Base

	#belongs_to :uf_procon
	has_many :ratings
	accepts_nested_attributes_for :ratings
	# Creating atributs to model unity_procon
	attr_accessible :address_unity_procon, :name_coordinator_unity_procon,
	 :uf_procon, :email_unity_procon, :list_phones, :position_unity_procon, :ratings_attributes, :average_pontuation

end