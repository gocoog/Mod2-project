class ReasonsController < ApplicationController
    before_action :manager_authorized, only: [:new, :create]
    
    def new
        @reason = Reason.new
    end 

    def create
        @reason = Reason.new(reason_params)
        if @reason.valid?
            @reason.save

            redirect_to manager_path(current_manager)
        else
            flash[:errors] = @reason.errors.full_messages

            redirect_to new_reason_path
        end
    end

    private

    def reason_params
        params.require(:reason).permit(:reason)
    end
end
