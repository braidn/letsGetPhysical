class Workout < ActiveRecord::Base
  belongs_to :body_type
  attr_accessible :description, :image, :title, :video, :body_types_id
end
