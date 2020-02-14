class UsersController < ApplicationController

  
  def new
    @user = User.new
    end
  
  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    if @user.save
      
      @connect = true
      flash[:notice] = @connect
      redirect_to gossips_path
        
      else 

      @disconect = true
      render 'new'
       
    end
  end

  def destroy

  end
end
