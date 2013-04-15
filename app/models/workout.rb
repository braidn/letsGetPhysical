class Workout < ActiveRecord::Base
  BODY_TYPES = %w{abs back legs arms cardio}
  validates :body_type, :inclusion => {:in => BODY_TYPES}
  attr_accessible :description, :image, :title, :video, :body_type
end
