# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  duration   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Exercise < ApplicationRecord
  has_many(:workouts, { :class_name => "Workout", :foreign_key => "exercise_id", :dependent => :destroy })
  
end
