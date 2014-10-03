class UnityProconsController < ApplicationController

	def index
		@unity_procons = UnityProcon.paginate(page: params[:page])
	end

	def show
	    @unity_procon = UnityProcon.find(params[:id])
	end

end