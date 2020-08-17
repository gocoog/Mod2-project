class ManagersController < ApplicationController

    def new
    end 

    def create
    end

    def show
    end

    private

    def manager_params
        params.require(:manager).permit(:username, :passcode, :password)
    end
    
    def find_manager
        @manager = Manager.find_by(id: params[:id])
    end

end
