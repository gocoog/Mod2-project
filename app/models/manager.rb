class Manager < ApplicationRecord
    has_many :requests
    has_many :employees, through: :requests
    has_one :manager_profile
end
