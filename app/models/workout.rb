class Workout < ApplicationRecord
  has_many(:user_workouts, { :class_name => "UserWorkout", :foreign_key => "workout_id", :dependent => :destroy })

  belongs_to(:exercise, { :required => true, :class_name => "Exercise", :foreign_key => "exercise_id" })
end
