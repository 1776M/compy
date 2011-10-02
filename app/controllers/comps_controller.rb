class CompsController < ApplicationController

  def index
    @user = User.find(current_user.id) 
    @comp = @user.comps 
  end

  def create
    @user = User.find(params[:user_id]) 
    @comp  = @user.comps.build(params[:comp])
    if @comp.save
      flash[:success] = "Competition created!"
      render root_path
    else
      render root_path
    end
  end

  def destroy
    @comp = Comp.find(params[:id])
    Comp.find(params[:id]).destroy
    flash[:success] = "Competition deleted"
    render home_path
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
