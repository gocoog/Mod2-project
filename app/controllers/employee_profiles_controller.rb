class EmployeeProfilesController < ApplicationController

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

    def employee_profile_params
        params.require(:employee_profile).permit(:employee_id, :years_working, :num_of_days_taken_off)
    end
    
    def find_employee_profile
        @employee_profile = EmployeeProfile.find_by(id: params[:id])
    end

end
