class Coach < ApplicationRecord
    has_secure_password
    has_many :clients
    has_many :expertises
    has_many :categories, through: :expertises

    validates :name, presence: true, uniqueness: true

end
