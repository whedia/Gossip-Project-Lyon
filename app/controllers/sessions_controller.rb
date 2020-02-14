class SessionsController < ApplicationController
#  include app/helpers/gossips_helper

  def new
    
  end

  def create
  
    user = User.find_by(email: params[:email])
  
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      @connected = true
      flash[:now] = @connected
      redirect_to gossips_path
  
    else
      @failure = true
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    render "new"
  end

end
