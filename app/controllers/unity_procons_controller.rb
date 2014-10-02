class UnityProconsController < ApplicationController

	def index
		@unity_procons = UnityProcon.paginate(page: params[:page])
	end

end