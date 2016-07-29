class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.references :user, foreign_key: true
      t.references :workout_type, foreign_key: true
      t.datetime :when
      t.references :gym, foreign_key: true

      t.timestamps
    end
  end
end
