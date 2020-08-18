class Employee < ApplicationRecord
    has_secure_password
    
    has_many :requests
    has_one :manager, through: :requests

    def employee_name
        self.first_name + " " + self.last_name
    end

end
