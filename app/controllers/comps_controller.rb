class CompsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @comp = @user.comps 
  end

  def create
    @user = User.find(params[:user_id]) 
    @comp  = @user.comps.build(params[:comp])
    if @comp.save
      flash[:success] = "Competition created!"
      render home_path
    else
      render home_path
    end
  end

  def destroy
    @comp = Comp.find(params[:id])
    Comp.find(params[:id]).destroy
    flash[:success] = "Competition deleted"
    render home_path
  end

end
