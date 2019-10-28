
class UsersController < ApplicationController
  def new; end

  def all
    @users = User.all
  end

  def select
    @user = User.find(params[:id])

  end

  def select_user_info
    user = User.find(params[:id])
    infos = user.infos
    render json: infos
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
