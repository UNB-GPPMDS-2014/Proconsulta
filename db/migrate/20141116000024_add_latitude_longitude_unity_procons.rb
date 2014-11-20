class AddLatitudeLongitudeUnityProcons < ActiveRecord::Migration
  def change
  	add_column :unity_procons, :latitude, :float
  	add_column :unity_procons, :longitude, :float
  end
end
