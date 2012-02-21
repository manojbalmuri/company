class UsersController < ApplicationController
  def new
   @user = User.new
  end
  

  def create
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "signed up!"
    else
      render "new"
    end
  end
  
  
  def sign_in
  
 end
 
 
 def sign_intest
   @user = User.where("email = ? AND password = ?"  ,params[:email],params[:password]).first 

   if @user
     session[:user_id] = @user.id
     
     redirect_to root_url 
 else
 redirect_to sign_in_users_path, :notice => "login failed please try agian"

 end
end


 def sign_out
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
 end


end

