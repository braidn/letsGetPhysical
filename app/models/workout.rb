class Workout < ActiveRecord::Base
  attr_accessible :description, :image, :title, :video, :body_type_id
end
