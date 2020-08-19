class ReasonsController < ApplicationController

    
    def new
        @reason = Reason.new
    end 

    def create
        @reason = Reason.create(reason_params)
        byebug
    end

    private

    def reason_params
        params.require(:reason).permit(:reason)
    end
end
