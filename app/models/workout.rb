class Workout < ActiveRecord::Base
	has_and_belongs_to_many :combos
  BODY_TYPES = %w{abs shoulders legs arms plyos}
  validates :body_type, :inclusion => {:in => BODY_TYPES}
  attr_accessible :description, :image, :title, :video, :body_type
end
