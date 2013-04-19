class UserHasManyCombos < ActiveRecord::Migration
	def change
		add_column :combos, :user_id, :integer
		add_index :combos, :user_id
	end
end
