class Workout < ApplicationRecord
  belongs_to :client

  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  validates :name, presence: true
  validates :length, numericality: { greater_than: 0 }
end
