class AddDetailsToUfHelpers < ActiveRecord::Migration
  def change
    add_column :uf_helpers, :quantity_direct_complaint, :integer
	add_column :uf_helpers, :quantity_preliminary_service, :integer
	add_column :uf_helpers, :quantity_calculation, :integer
	add_column :uf_helpers, :quantity_cip, :integer
	add_column :uf_helpers, :quantity_forward_supervision, :integer
	add_column :uf_helpers, :quantity_initial_jec, :integer
	add_column :uf_helpers, :quantity_letter_complaint, :integer
	add_column :uf_helpers, :quantity_simple_consult, :integer
  end
end