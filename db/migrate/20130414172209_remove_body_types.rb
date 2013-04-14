class RemoveBodyTypes < ActiveRecord::Migration
  def change
    drop_table :body_types
  end
end
