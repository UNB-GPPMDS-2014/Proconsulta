class SuppliersController < ApplicationController
	
	# show 	all sppliers;
  def index
    @suppliers = Supplier.paginate(page: params[:page])
  end
  #Show supplier associated with one especific id.
  def show
    @supplier = Supplier.find(params[:id])
  end

end