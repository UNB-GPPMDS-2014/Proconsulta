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
        @hash = hash_format_graph
	end

	def hash_format_graph
		quantity_total = @supplier.customer_services.count
		hash = @supplier.customer_services.order('count_all desc').limit(10).group(:description_problem_customer_service).count
		array_quantity =  hash.map { |key, value| value }
		quantity = array_quantity.inject(:+)
		
		unless quantity_total.nil?
      		unless quantity.nil?
      			outros = (quantity_total - quantity)
      			another_hash = {"outros" => outros }
      	  		hash = hash.merge(another_hash)
           end
    	end 
	end


end
