class ManagerProfilesController < ApplicationController

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    private

    def manager_profile_params
        params.require(:manager_profile).permit(:manager_id)
    end
    
    def find_manager_profile
        @manager_profile = ManagerProfile.find_by(id: params[:id])
    end

end
