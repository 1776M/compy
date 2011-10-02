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
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @comp = Comp.find(params[:id])
    Comp.find(params[:id]).destroy
    flash[:success] = "Competition deleted"
    redirect_to root_path
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

  def update
    @comp = Comp.find(params[:id])
    if @comp.update_attributes(params[:comp])
      flash[:success] = "Competition updated"
      redirect_to @comp
    else
      @title = "Edit user"
      render 'edit'
    end
  end

end
