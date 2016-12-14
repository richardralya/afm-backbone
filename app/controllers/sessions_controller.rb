class SessionsController < ApplicationController
  
  def new
    @Title = "Sign up"
  end
  
  def create
    
    user = User.authenticate(params[:session][:email], params[:session][:submitted_password])
    if user.nil?
     
      @Title = "Sign in again"
      redirect_to signin_path,  notice: "Invalid email/password combinations." 
    else
      # Sign the user in and redirect to the user's show page
      #sign_in user
      redirect_to items_path,  notice: "Welcome back!"
    end
      
  end
  
  
  def destroy
    @Title = "Sign out"
  end
  
end
