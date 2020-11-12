class CreateLtiWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :lti_workouts do |t|
      t.references :workout, index: true
      t.string :lms_assignment_id, null: false 

      t.timestamps
    end
  end
end
