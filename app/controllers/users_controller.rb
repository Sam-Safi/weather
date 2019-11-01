class UsersController < ApplicationController
  def new;
  end

  def all
    @users = User.all
  end

  def select
    @user = User.find(params[:id])

  end

  def select_user_cities
    user = User.find(params[:id])
    cities = user.cities
    render json: cities
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

  def favouritecity

    user = User.find(session[:user_id])
    user.fav_cities.create(city_name: params[:name])

    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
