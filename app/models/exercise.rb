class Exercise < ApplicationRecord
  belongs_to :category
  accepts_nested_attributes_for :category

  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  def embed_video
    "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/#{ self.url }\"></iframe>"
  end

  def video_link
    "http://youtu.be/#{ self.url }"
  end

end
