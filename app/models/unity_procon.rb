class UnityProcon < ActiveRecord::Base
	#belongs_to :uf_procon
	has_many :ratings

	attr_accessible :address_unity_procon, :name_coordinator_unity_procon,
	 :uf_procon, :email_unity_procon, :list_phones

end