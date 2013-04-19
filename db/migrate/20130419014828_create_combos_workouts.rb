class CreateCombosWorkouts < ActiveRecord::Migration
	def change
		create_table :combos_workouts, :id => false do |t|
			t.references :combo, :null => false
			t.references :workout, :null => false
			t.timestamps
		end
  end
end
