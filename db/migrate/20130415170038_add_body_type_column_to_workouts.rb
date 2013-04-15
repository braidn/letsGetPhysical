class AddBodyTypeColumnToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :body_type, :string
  end
end
