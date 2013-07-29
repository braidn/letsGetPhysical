class RemoveComboWorkouts < ActiveRecord::Migration
	def change
		drop_table :combos_workouts
	end
end
