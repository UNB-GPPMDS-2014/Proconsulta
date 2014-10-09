class UnityProconsController < ApplicationController
	# Show all procon units
	def index
		@unity_procons = UnityProcon.paginate(page: params[:page])
	end
	
	# Show one especific procon unity associated with one especific id.

	def show
	    @unity_procon = UnityProcon.find(params[:id])
	end

	def ranking
		
	end

end