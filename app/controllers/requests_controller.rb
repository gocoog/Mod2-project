class RequestsController < ApplicationController
    before_action :find_request, only: [:edit, :update]
    
    
    def new 
        if employee_authorized
            @request = Request.new
            @employees = Employee.all
        end
    end

    def create
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

    # def edit
    # end

    def update
        @request.update(manager_params)


        redirect_to Manager_path(manager_params)
    end

    private

    def request_params
        params.require(:request).permit(:employee_id, :manager_id, :reason_id, :explanation)
    end


    # def manager_params
    #     params.require(:request).permit(:man_explanation, :approve_or_deny)
    # end
    
    def find_request
        @request = Request.find_by(id: params[:id])
    end

end
