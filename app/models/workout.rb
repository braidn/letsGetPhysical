class Workout < ActiveRecord::Base
  belongs_to :body_type
  attr_accessible :description, :image, :title, :video, :body_type_id
end
