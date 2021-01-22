class Category < ApplicationRecord
    has_many :expertises
    has_many :coaches, through: :expertises

    validates :mobility, inclusion: {in: %w( low medium high), message: "must be low, medium, or high"}
    validates :name, presence: true
end
