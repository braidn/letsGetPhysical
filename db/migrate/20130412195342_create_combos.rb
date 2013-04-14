class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
