class AddUnityProconIdToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :unity_procon_id, :integer
    add_index :ratings, :unity_procon_id
  end
end
