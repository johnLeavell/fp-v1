class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:user_workouts, { :class_name => "UserWorkout", :foreign_key => "user_id", :dependent => :destroy })
end
