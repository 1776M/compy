class UsersController < Devise::SessionsController
  def create
    super
  end

  def index
    @users = User.All
  end

  def show
    @users = User.All
  end


end