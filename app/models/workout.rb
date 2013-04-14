class Workout < ActiveRecord::Base
  belongs_to :body_type
  #TODO write the hasbtm migration
  has_and_belongs_to_many :combos
  attr_accessible :description, :image, :title, :video, :body_type_id
end
