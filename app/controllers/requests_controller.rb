class RequestsController < ApplicationController

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

    def request_params
        params.require(:request).permit(:employee_id, :manager_id, :reason_id, :explanation, :man_explanation, :approve_or_deny)
    end
    
    def find_request
        @request = Request.find_by(id: params[:id])
    end

end
