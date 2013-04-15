class Workout < ActiveRecord::Base
  BODY_TYPES = %w[abs back legs arms cardio]
  attr_accessible :description, :image, :title, :video, :body_type_id
end
