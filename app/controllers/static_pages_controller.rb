class StaticPagesController < ApplicationController
  before_action :authenticate_user, only: [:team, :contact]

  def team
  end

  def contact  
  end

  def welcome
  end

  def home
    
  end

    private

  def authenticate_user
    unless current_user
      flash[:danger] = "You are logged out : login if you want to access content."
      redirect_to new_session_path
    end
  end
end
