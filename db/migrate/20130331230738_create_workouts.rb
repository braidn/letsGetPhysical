class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
