# == Schema Information
#
# Table name: workouts
#
#  id               :integer          not null, primary key
#  coaches_comments :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  exercise_id      :integer
#
class Workout < ApplicationRecord
  has_many(:user_workouts, { :class_name => "UserWorkout", :foreign_key => "workout_id", :dependent => :destroy })

  belongs_to(:exercise, { :required => true, :class_name => "Exercise", :foreign_key => "exercise_id" })
end
