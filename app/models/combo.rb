class Combo < ActiveRecord::Base
  #TODO Make a migration for the relationship with workouts
  has_and_belongs_to_many :workouts
  attr_accessible :description, :name
end
