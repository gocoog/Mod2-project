class AuthController < ApplicationController
  
    def login
        render :login
      end
    
      def verify
        if login_params[:passcode] == ""
            
            @employee = Employee.find_by(username: login_params[:username])
            if @employee && @employee.authenticate(login_params[:password])
                session[:user] = @employee.username

                redirect_to employee_path(@employee)
            else
                flash[:error] = "Login failed."
                redirect_to login_path
            end
        else
            @manager = Manager.find_by(username: login_params[:username])
            if @manager && @manager.authenticate(login_params[:password])
                session[:user] = @manager.username
                redirect_to manager_path(@manager)
            else
                flash[:error] = "Login failed."
                redirect_to login_path
            end
        end
      end
    
      def logout
        session[:user] = nil
        redirect_to login_path
      end
    
      private
      def login_params
        params.require(:login).permit(:username, :password, :passcode)
      end

end