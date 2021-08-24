class UserAuthenticationController < ApplicationController


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
    
    if save_status == true
 
 
    redirect_to("/", { :notice => "Account created successfully! Please login to your account!"})
  else
    redirect_to("/sign_up", { :alert => "Email or username already exists"})
  end


  end

  def goodbye

      reset_session
  
      redirect_to("/", { :notice => "Signed out successfully." })
  end

  def create_cookie
    user = User.where({ :email => params.fetch("query_email") }).first
    
    the_supplied_password = params.fetch("query_password")
    
    if user != nil
      are_they_legit = user.authenticate(the_supplied_password)
    
      if are_they_legit == false
        redirect_to("/sign_in", { :alert => "Incorrect password." })
      else
        session[:user_id] = user.id
      
        redirect_to("/", { :notice => "Signed in successfully." })
      end
    else
      redirect_to("/sign_in", { :alert => "No user with that email address." })
    end




    
  end


end