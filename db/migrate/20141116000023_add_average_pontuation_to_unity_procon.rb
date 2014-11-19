class AddAveragePontuationToUnityProcon < ActiveRecord::Migration
  def change
    add_column :unity_procons, :average_pontuation, :float
  end
end
