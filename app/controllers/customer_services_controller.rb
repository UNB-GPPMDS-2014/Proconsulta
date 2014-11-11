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
			redirect_to root_path
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

		QUANTITY_DIRECT_COMPLAINT = 1
		QUANTITY_PRELIMINARY_SERVICE = 2
		QUANTITY_CALCULATION = 3
		QUANTITY_CIP = 4
		QUANTITY_FORWARD_SUPERVISION = 5
		QUANTITY_INITIAL_JEC = 6
		QUANTITY_LETTER_COMPLAINT = 7
		QUANTITY_SIMPLE_CONSULT = 8

	def filter_customer_service_by_type(type)
		hash = Hash.new
		all_uf = UfHelper.all

		all_uf.each do | uf|
			if (uf.description_uf == nil)
				uf.description_uf = "vazio"
			end	

			case type
				when QUANTITY_DIRECT_COMPLAINT
					hash[uf.description_uf] = uf.quantity_direct_complaint.to_i

				when QUANTITY_PRELIMINARY_SERVICE
					hash[uf.description_uf] = uf.quantity_preliminary_service.to_i				

				when QUANTITY_CALCULATION
					hash[uf.description_uf] = uf.quantity_calculation.to_i

				when QUANTITY_CIP
					hash[uf.description_uf] = uf.quantity_direct_cip.to_i		

				when QUANTITY_FORWARD_SUPERVISION
					hash[uf.description_uf] = uf.quantity_forward_supervision.to_i

				when QUANTITY_INITIAL_JEC
					hash[uf.description_uf] = uf.quantity_initial_jec.to_i
					
				when QUANTITY_LETTER_COMPLAINT																			
					hash[uf.description_uf] = uf.quantity_letter_complaint.to_i	

				when QUANTITY_SIMPLE_CONSULT
					hash[uf.description_uf] = uf.quantity_simple_consult.to_i		
			
			end
			
		end	

		hash	

	end

end