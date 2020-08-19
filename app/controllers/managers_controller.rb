class ManagersController < ApplicationController
    before_action :find_manager, only: [:edit, :update]
    before_action :manager_authorized

    def show
        @manager = Manager.find_by(id: current_manager.id)
    end

    def new
        @manager = Manager.new
    end 

    def create
        @manager = Manager.new(manager_params)
        if @manager.valid?
            @manager.save
            flash[:success] = "Manager was successfully created!"
            redirect_to login_path
        else
            flash[:errors] = @manager.errors.full_messages
            redirect_to new_manager_path
        end
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
