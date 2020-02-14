class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  def new
    @gossip = Gossip.new
  end
  def create
    @gossip = Gossip.new(title: params[:title], content: params[:body], user: User.find_by(first_name: params[:author]))
    if @gossip.save
      
      @success = true
      flash[:success] = @success
      redirect_to gossips_path
        
      else 

      @fail = true
      render 'new'
       
    end
  end
  end

