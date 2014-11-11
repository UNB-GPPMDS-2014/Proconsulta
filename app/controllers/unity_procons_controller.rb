class UnityProconsController < ApplicationController
	# Show all procon units
	def index
		@unity_procons = UnityProcon.paginate(page: params[:page])
	end
	
	# Show one especific procon unity associated with one especific id.

	def show
	     @unity_procon = UnityProcon.find(params[:id])
	   	 @rating = Rating.create
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

		sql = sql
		data = UnityProcon.where("uf_procon = ?", params[:search]).paginate(:page=>1)
		render :json=>data.to_json
	end

	def add_rating
		puts params
		rating = Rating.find( params[:rating_id])
		unity_procon = UnityProcon.find( params[:unity_procon_id] )

		unless rating.blank? 
			unity_procon.ratings << rating
			if (unity_procon.save)	
				flash[:notice] = "Avaliação concluida"
			else
				flash[:notice] = "ERRO!"
			end
		end
		redirect_to unity_procon
	end
end
