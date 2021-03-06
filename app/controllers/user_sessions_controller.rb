class UserSessionsController < ApplicationController
  layout 'blank_layout'

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email params[:email]
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "We did it Martha, we're in!"
    else
      flash.now[:alert] = "You messed something up. Either type it right or create a new account"
      render :new, layout: 'blank_layout'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/welcome'
  end
end
