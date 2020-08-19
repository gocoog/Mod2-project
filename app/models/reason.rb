class Reason < ApplicationRecord
    has_many :requests
    validates :reason, presence: true
end
