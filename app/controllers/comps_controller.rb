class CompsController < ApplicationController

  def index
    @user = User.find(current_user.id)    
    @comps = Comp.find(:all, :conditions => [" user_id = ?", current_user.id])
  end

  def create
    @user = User.find(params[:user_id]) 
    @comp  = @user.comps.build(params[:comp])
    if @comp.save
      flash[:success] = "Competition created!"
      render 'index'
    else
      render 'index'
    end
  end

  def destroy
    @comp = Comp.find(params[:id])
    Comp.find(params[:id]).destroy
    flash[:success] = "Competition deleted"
    render 'show'
  end

  def show
    @comp = Comp.find(params[:id])  
  end

  def new
      @comp = Comp.new
  end

  def edit
      @comp = Comp.find(params[:id])   
  end

end
