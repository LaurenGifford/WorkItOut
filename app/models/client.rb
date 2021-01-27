class Client < ApplicationRecord
    has_secure_password
    belongs_to :coach
    has_many :workouts

    validates :name, presence: true, uniqueness: true
    validates_presence_of :birthday

    def age
        Date.today.year - self.birthday.year
    end

    def level_up
        self.experience += 1
    end
end
