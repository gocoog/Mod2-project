class Request < ApplicationRecord
    belongs_to :employee
    belongs_to :manager
    has_one :reason
    
end
