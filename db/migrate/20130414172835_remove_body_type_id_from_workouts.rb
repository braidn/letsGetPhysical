class RemoveBodyTypeIdFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :body_type_id
  end
end
