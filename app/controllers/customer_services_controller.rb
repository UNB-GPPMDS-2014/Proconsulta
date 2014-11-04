class CustomerServicesController < ApplicationController
	
	def index # List all Customer_Services
		@customer_services = CustomerService.paginate(page: params[:page])
		@hash_uf = return_hash
	end

	def list
		@customer_services = CustomerService.paginate(page: params[:page])
		@hash_uf = return_hash
	end

	def show # List Customer_Service related to one especific id.
	    @customer_service = CustomerService.find(params[:id])
	end

	def custom_search
		unless request.xhr? or params[:page].nil? or params[:search].nil?
			redirect_to "/"
			return
		end

		sql = "1=1"

		if !params[:type_search].nil? and params[:type_search] != "Fornecedor"
			sql += "AND #{params[:type_search]}_customer_service = ? "
		end

		if !params[:unities].nil? and params[:unities].length > 0
			params[:unities].each do |u|

			end
		end

		sql = sql
		data = CustomerService.where("#{params[:type_search]}_customer_service = ?", params[:search]).paginate(:page=>1)
		render :json=>data.to_json
	end

	def return_hash
		hash = Hash.new
		all_uf = UfHelper.all

		all_uf.each do | uf|
			if (uf.description_uf == nil)
				uf.description_uf = "vazio"
			end	

			hash[uf.description_uf] = uf.quantity_uf.to_i

		end

		hash	

	end
end