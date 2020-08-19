class Employee < ApplicationRecord
    has_secure_password
    
    has_many :requests
    has_one :manager, through: :requests

    validates :username, :first_name, :last_name, :password, presence: true
    validates :username, :email, uniqueness: true
    validates :password, length: { minimum: 4 }

    def employee_name
        self.first_name + " " + self.last_name
    end

end
