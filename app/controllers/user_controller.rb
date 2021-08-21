class UserController < ApplicationController


  def sign_up

  
    render({ :template => "user/create.html.erb" })
  
  
  end

  def login

  
    render({ :template => "user/login.html.erb" })
  
  
  end


  def create
    @user = User.new
    @user.email = params.fetch("query_email")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")
    @user.username = params.fetch("query_user_name")
   

    save_status = @user.save

    redirect_to("/", { :notice => "Account created successfully!"})

  end

  def goodbye

      reset_session
  
      redirect_to("/", { :notice => "Signed out successfully." })
  end

end