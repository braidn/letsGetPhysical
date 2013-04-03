class BodyTypesHaveManyWorkouts < ActiveRecord::Migration
  def up
    change_table :workouts do |t|
      t.references :body_types
      t.index :body_type
    end
  end

  def down
    change_table :workouts do |t|
      t.remove_references :body_types
      t.remove_index :body_type
    end
  end
end
