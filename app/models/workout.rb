class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :workout_type
  belongs_to :gym
end
