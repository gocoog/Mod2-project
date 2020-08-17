class EmployeesController < ApplicationController

    def new
    end
    
    def create
    end

    def show
    end

    # def edit   - Stretch goal to edit employee, add password validation for changing it
    # end

    # def update
    # end

    private

    def employee_params
        params.require(:employee).permit(:username, :email, :password)
    end
    
    def find_employee
        @employee = Employee.find_by(id: params[:id])
    end

end
