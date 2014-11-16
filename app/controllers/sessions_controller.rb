class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email params[:email]
    binding.pry
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      binding.pry
      redirect_to root_path, notice: "We did it Martha, we're in!"
    else
      flash.now[:alert] = "You messed something up. Either type it right or created a new account"
      binding.pry
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/welcome'
  end
end
