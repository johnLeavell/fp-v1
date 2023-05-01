class Exercise < ApplicationRecord
  has_many(:workouts, { :class_name => "Workout", :foreign_key => "exercise_id", :dependent => :destroy })
  
end
