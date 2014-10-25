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
		@unity_procons = UnityProcon.order(:position_unity_procon)
	end

	def custom_search
		unless request.xhr? or params[:page].nil? or params[:search].nil?
			redirect_to "/"
			return
		end

		sql = "1=1"

		if !params[:unities].nil? and params[:unities].length > 0
			params[:unities].each do |u|

			end
		end

		sql = sql
		data = UnityProcons.where(params[:search]).paginate(:page=>1)
		render :json=>data.to_json
	end

end