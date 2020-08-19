class ApplicationController < ActionController::Base
    helper_method :current_employee, :current_manager

    def current_employee
      if !session[:user].nil? && !session[:user] != ""
        @employee = Employee.find_by(username: session[:user])
      else
        nil
      end
    end

    def current_manager
      if !session[:user].nil? && !session[:user] != ""
        @manager = Manager.find_by(username: session[:user])
      else
        nil
      end
    end
  
    def manager_logged_in?
        !!current_manager
    end

    def employee_logged_in?
        !!current_employee
    end
  
    def manager_authorized
      if manager_logged_in?
        true
      else
        flash[:error] = "You must login to see this page."
        redirect_to login_path
      end
    end

    def employee_authorized
      if employee_logged_in?
        true
      else
        flash[:error] = "You must login to see this page."
        redirect_to login_path
      end
    end
end
