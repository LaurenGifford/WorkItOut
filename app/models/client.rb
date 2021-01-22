class Client < ApplicationRecord
    has_secure_password
    belongs_to :coach
    has_many :workouts
end
