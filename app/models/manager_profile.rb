class ManagerProfile < ApplicationRecord
    belongs_to :manager
    has_many :requests, through: :manager
end

