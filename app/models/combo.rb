class Combo < ActiveRecord::Base
  has_and_belongs_to_many :workouts
	belongs_to :user
  attr_accessible :description, :name
end
