class Expertise < ApplicationRecord
  belongs_to :coach
  belongs_to :category

  accepts_nested_attributes_for :category

  validates_uniqueness_of :category, scope: :coach
end
