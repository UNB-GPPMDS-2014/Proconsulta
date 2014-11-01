class SuppliersController < ApplicationController
	
	# show 	all sppliers;
  def index
    @suppliers = Supplier.paginate(page: params[:page])
  end
  #Show supplier associated with one especific id.
  def show
    @supplier = Supplier.find(params[:id])
  end
  def custom_search
		unless request.xhr? or params[:page].nil? or params[:search].nil?
			redirect_to "/"
			return
		end

		sql = "1=1"

		if !params[:type_search].nil? !
			sql += "AND #{params[:type_search]}_suppliers = ?"
		end

		if !params[:unities].nil? and params[:unities].length > 0
			params[:unities].each do |u|

			end
		end

		sql = sql
		data = Supplier.where("#{params[:type_search]}_suppliers = ?", params[:search]).paginate(:page=>1)
		render :json=>data.to_json
	end

end