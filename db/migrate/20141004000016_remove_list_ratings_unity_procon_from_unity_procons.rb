class RemoveListRatingsUnityProconFromUnityProcons < ActiveRecord::Migration
	def up
		remove_column :unity_procons, :list_ratings_unity_procon
	end
	def down
		add_column :unity_procons, :list_ratings_unity_procon, :string
	end
end