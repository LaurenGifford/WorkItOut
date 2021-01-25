class Exercise < ApplicationRecord
  belongs_to :category
  accepts_nested_attributes_for :category

  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
end
