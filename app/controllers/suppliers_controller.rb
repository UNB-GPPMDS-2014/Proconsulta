class SuppliersController < ApplicationController

	# show 	all sppliers;
	def index
		@search = Supplier.search(params[:q])
		@suppliers_search = @search.result
		@suppliers = @suppliers_search.paginate(page: params[:page])
	end

	#Show supplier associated with one especific id.
	def show
		@supplier = Supplier.find(params[:id])
	end

	#def custom_search
	#		unless request.xhr? or params[:page].nil? or params[:search].nil?
	#			redirect_to root_path
	#			return
	#
	#	sql = "1=1"

	#	if !params[:type_search].nil?
	#		sql += "AND #{params[:type_search]} = ?"
	#	end

	#	sql = sql
	#	data = Supplier.where("#{params[:type_search]} like '%' ? '%'", params[:search]).paginate(:page=>1)
	#	render :json=>data.to_json
	#end

	def hash_format_graph

		@hash = @supplier.customer_services.order('count_all desc').limit(10).group(:description_problem_customer_service).count
		array_quantity =  @hash.map { |key, value| value }
		quantity_10 = array_quantity.inject(:+)
		outros = @supplier.customer_services.count - quantity_10
		another_hash = {"outros" => outros }
		@hash.merge(another_hash)
		 
	end



end
