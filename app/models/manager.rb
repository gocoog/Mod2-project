class Manager < ApplicationRecord
    has_secure_password
    
    has_many :requests
    has_many :employees, through: :requests

    def manager_name
        self.first_name + " " + self.last_name
    end

end
