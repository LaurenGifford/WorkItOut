class Client < ApplicationRecord
    has_secure_password
    belongs_to :coach
    has_many :workouts

    def age
        Date.today.year - self.birthday.year
    end
end
