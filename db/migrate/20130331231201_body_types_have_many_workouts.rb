class BodyTypesHaveManyWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :body_types_id
    add_column :workouts, :body_type_id, :integer
    add_index :workouts, :body_type_id
  end
end

