# encoding: UTF-8
class UnityProconsController < ApplicationController
	# Show all procon units
	def index
		@unity_procons = UnityProcon.paginate(page: params[:page])
		@unity_procons = UnityProcon.all
		@hash = Gmaps4rails.build_markers(@unity_procons) do |unity_procon, marker|
		    marker.lat unity_procon.latitude
		    marker.lng unity_procon.longitude
		    marker.infowindow unity_procons.description	
		    marker.picture({
		       "url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
		       "width" =>  32,
		       "height" => 32})
		    marker.json({title: unity_procon.title})
		end
	end
	
	# Show one especific procon unity associated with one especific id.

	def show
	     @unity_procon = UnityProcon.find(params[:id])
	   	 @rating = Rating.new
	end

	def ranking
		@unity_procons = UnityProcon.order(:position_unity_procon)
	end
	def edit
	end

	def custom_search
		unless request.xhr? or params[:page].nil? or params[:search].nil?
			redirect_to root_path
			return
		end

		sql = "1=1"

		sql = sql
		data = UnityProcon.where("uf_procon = ?", params[:search]).paginate(:page=>1)
		render :json=>data.to_json
	end

	def update
		@unity_procon = UnityProcon.find( params[:id])
 		 @user = current_user

			if (@unity_procon.update_attributes(params[:unity_procon]))
				@rating = @unity_procon.ratings.last
				@rating.user_id = @user.id
				@rating.save

				flash[:notice] = "Avaliação concluida"
			else
				flash[:notice] = "ERRO!"
			end
		
		redirect_to @unity_procon
	end

	def redirect
		if(current_user == nil)
			redirect_to root_path
			flash[:notice] = "Necessário estar logado"

		end


	end
	

	
end
