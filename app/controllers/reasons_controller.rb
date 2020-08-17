class ReasonsController < ApplicationController

    def new
    end 

    def create
    end

    private

    def reason_params
        params.require(:reason).permit(:reason)
    end
    
    def find_reason
        @reason = Reason.find_by(id: params[:id])
    end

end
