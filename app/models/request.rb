class Request < ApplicationRecord
    belongs_to :employee
    belongs_to :manager
    belongs_to :reason
    
end
