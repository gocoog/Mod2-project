class Employee < ApplicationRecord
    has_many :requests
    has_one :manager, through: :requests
    has_one :employee_profile
end
