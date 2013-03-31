class CreateBodyTypes < ActiveRecord::Migration
  def change
    create_table :body_types do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
