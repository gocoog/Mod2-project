class ApplicationController < ActionController::Base
    helper_method :current_employee, :current_manager

    def current_employee
      if !session[:user_id].nil? && !session[:user_id] != ""
        @employee = Employee.find_by(username: session[:user])
      else
        nil
      end
    end

    def current_manager
      if !session[:user_id].nil? && !session[:user_id] != ""
        @manager = Manager.find_by(username: session[:user])
      else
        nil
      end
    end
  
    def logged_in?
      # if current_author.nil?
      #   false
      # else
      #   true
      # end
      
      if current_manager
        !!current_manager
      else
        !!current_employee
      end
    end
  
    def authorized
      if logged_in?
        true
      else
        flash[:error] = "You must login to see this page."
        redirect_to login_path
      end
    end
end
