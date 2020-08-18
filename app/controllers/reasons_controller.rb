class ReasonsController < ApplicationController

    before_action :authorized
    
    def new
        @reason = Reason.new
    end 

    def create
        @reason = Reason.new(reason_params)
    end

    private

    def reason_params
        params.require(:reason).permit(:reason)
    end
end
