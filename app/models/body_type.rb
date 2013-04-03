class BodyType < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :workouts
  validates :description, :title, :presence => true
end
