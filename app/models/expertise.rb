class Expertise < ApplicationRecord
  belongs_to :coach
  belongs_to :category
end
