class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]
    before_action :employee_authorized, only: [:show]

    def show
    end

    def new   
        @employee = Employee.new
    end
    
    def create
        @employee = Employee.create(employee_params)

        flash[:success] = "Employee was successfully created!"

        redirect_to login_path
    end

    def edit
    end 

    def update
        if employee_authorized
            @employee.update(employee_params)
            flash[:success] = 'Employee Profile has successfully been updated!'
            redirect_to employee_path(@employee)
        end
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :username, :email, :password, :years_working)
    end
    
    def find_employee
        @employee = Employee.find(params[:id])
    end

end
