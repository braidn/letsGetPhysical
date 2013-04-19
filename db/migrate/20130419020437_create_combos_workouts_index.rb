class CreateCombosWorkoutsIndex < ActiveRecord::Migration
	def change
		add_index :combos_workouts, [:combo_id, :workout_id], :unique => true
	end
end
