# encoding: UTF-8
class UnityProconsController < ApplicationController
	# Show all procon units
	def index
		@search = UnityProcon.search(params[:q])
		@unity_procons_search = @search.result
		@unity_procons = @unity_procons_search.paginate(page: params[:page])
	end

	# Show one especific procon unity associated with one especific id.

	def show
	    @unity_procon = UnityProcon.find(params[:id])
	   	@rating = Rating.new
	   	@ratings = Rating.where("unity_procon_id = ?", params[:id]).order("created_at DESC")
	   	@ratingpie = Rating.where("unity_procon_id = ?", params[:id])
	   	@rating_hash = return_hash

	   	@hash = Gmaps4rails.build_markers(@unity_procon) do |unity_procon, marker|
	  		marker.lat unity_procon.latitude
	 		marker.lng unity_procon.longitude
		end

	end

	def return_hash
		hash = Hash.new
		all_rating = Rating.where("unity_procon_id = ?", params[:id])

		all_rating.each do |rating|
			
			case rating.value_rating
			when 1
				ratings = Rating.all.select { |m| m.value_rating == rating.value_rating }
				hash["Péssimo"] = ratings.count
			when 2
				ratings = Rating.all.select { |m| m.value_rating == rating.value_rating }	
				hash["Ruim"] = ratings.count
			when 3
				ratings = Rating.all.select { |m| m.value_rating == rating.value_rating }
				hash["Regular"] = ratings.count
			when 4
				ratings = Rating.all.select { |m| m.value_rating == rating.value_rating }
				hash["Bom"] = ratings.count
			when 5
				ratings = Rating.all.select { |m| m.value_rating == rating.value_rating }
				hash["Ótimo"] = ratings.count
			else
				#nothing to do
			end	
		end

		hash
	end

	def ranking
		@unity_procons = UnityProcon.order(:position_unity_procon)
	end

	def edit
	end

	def custom_search
		unless request.xhr? or params[:page].nil? or params[:search].nil?
			redirect_to root_path
		end

		sql = "1=1"

		sql = sql
		data = UnityProcon.where("uf_procon = ?", params[:search]).paginate(:page=>1)
		render :json=>data.to_json
	end

	def custom_search_ranking
		unless request.xhr? or params[:page].nil? or params[:search].nil?
			redirect_to root_path
			return
		end

		sql = "1=1"

		sql = sql
		if params[:search] == ""
			data = UnityProcon.where("average_pontuation is not null").order('average_pontuation DESC').paginate(:page=>1)
		else
			data = UnityProcon.where("uf_procon = ? and average_pontuation is not null", params[:search]).order('average_pontuation DESC').paginate(:page=>1)
		end
		render :json=>data.to_json
	end

	def update
		@unity_procon = UnityProcon.find(params[:id])
 		 @user = current_user

			if (@unity_procon.update_attributes(params[:unity_procon]))
				@rating = @unity_procon.ratings.last
				@rating.user_id = @user.id
				@rating.save
				@unity_procon.average_pontuation = Rating.where("unity_procon_id =?", @unity_procon.id).average(:value_rating)
				@unity_procon.save
				flash[:notice] = "Avaliação concluida"
			else
				flash[:notice] = "ERRO!"
			end

		redirect_to @unity_procon
	end

end
