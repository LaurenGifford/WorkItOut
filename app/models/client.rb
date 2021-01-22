class Client < ApplicationRecord
    has_secure_password
    belongs_to :coach
end
