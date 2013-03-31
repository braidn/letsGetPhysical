class BodyTypesHaveManyWorkouts < ActiveRecord::Migration
  def up
    change_table :workouts do |t|
      t.references :body_types
    end
  end

  def down
    change_table :workouts do |t|
      t.remove_references :body_types
    end
  end
end
