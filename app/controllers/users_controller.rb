class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome"
    else
      flash.now[:alert] = "Cannot Register User"
      render :new
    end
  end

  def edit; end

  def update
    @user.upate_attributes user_params
    if @user.save
      redirect_to root_path, notice: "Profile updated"
    else
      flash.now[:alert] = "Profile update could not be completed"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find params[:id]
  end
end
