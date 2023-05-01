class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :exercise_id
      t.string :coaches_comments

      t.timestamps
    end
  end
end
