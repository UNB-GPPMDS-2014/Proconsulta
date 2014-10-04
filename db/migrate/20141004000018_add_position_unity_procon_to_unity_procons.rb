class AddPositionUnityProconToUnityProcons < ActiveRecord::Migration
  def change
    add_column :unity_procons, :position_unity_procon, :integer
  end
end
