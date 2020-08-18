class ManagersController < ApplicationController
    before_action :find_manager, only: [:show, :edit, :update]
    before_action :authorized

    def show
    end

    def new
        @manager = Manager.new
    end 

    def create
        @manager = Manager.create(manager_params)
        
        flash[:success] = "Manager was successfully created!"
        redirect_to manager_path(@manager)
    end

    def edit
    end 

    def update
        @manager.update(manager_params)
        flash[:success] = "Manager Profile was successfully updated!"

        redirect_to manager_path(@manager)
    end

    private

    def manager_params
        params.require(:manager).permit(:first_name, :last_name, :email, :username, :passcode, :password)
    end
    
    def find_manager
        @manager = Manager.find(params[:id])
    end

end
