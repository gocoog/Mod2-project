class Manager < ApplicationRecord
    has_secure_password
    
    has_many :requests
    has_many :employees, through: :requests

    validates :first_name, :last_name, :username, :email, :password, :passcode, presence: true
    validates :username, :email, uniqueness: true
    validates :password, length: { minimum: 4 }
    validates :passcode, length: { in: 3..6 }

    def manager_name
        self.first_name + " " + self.last_name
    end

end
