class Manager < ApplicationRecord
    has_secure_password
    
    has_many :requests
    has_many :employees, through: :requests

    def manager_name
        self.manager.first_name + " " + self.manager.last_name
    end

end
