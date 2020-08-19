class RequestsController < ApplicationController
    # validates :approve_or_deny, inclusion: { in: %w(Approved Denied),
    # message: "%{value} is not a valid input" }
    
    
    def new 
        if employee_authorized
            @request = Request.new
            @employees = Employee.all
        end
    end

    def create
        if employee_authorized
            @request = Request.new(request_params)
            
            @request.employee_id = current_employee.id

            if @request.valid?
                @request.save
                flash[:success] = "Request was created!"
                redirect_to employee_path(Employee.find(@request.employee_id))
            else 
                pluralize(@request.errors.count, "error")
                puts "prohibited this request from being saved:"

                flash[:errors] = @request.errors.full_messages
                redirect_to new_request_path
            end
        end
    end

    def edit
        if manager_authorized
            @request = Request.find(params[:id])
            @managers = Manager.all
        end
    end

    def update
        if manager_authorized
            @request = Request.find(params[:id])
            @request.update(manager_params)

            redirect_to manager_path
        end
    end

    private

    def request_params
        params.require(:request).permit(:employee_id, :manager_id, :reason_id, :explanation)
    end


    def manager_params
        params.require(:request).permit(:man_explanation, :approve_or_deny)
    end

end
