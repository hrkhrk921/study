class UsersController < ApplicationController
  def index
    @users = Users.all
  end
  def show
     @user = User.find(params[:id])
  end
  def edit
    @user = current_user
  end
  def destroy
    
  end
end
