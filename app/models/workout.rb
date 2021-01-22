class Workout < ApplicationRecord
  belongs_to :client

  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
end
