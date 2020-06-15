class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = Users.all
  end

  def show
     @user = User.find(params[:id])
     @book = Book.new
  end

  def edit
    @user = current_user
  end

  def update
    
  end

  def destroy
    
  end

private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
