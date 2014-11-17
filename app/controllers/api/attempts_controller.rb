module Api
  class AttemptsController < ActionController::Base

    def create
      @choice       = Choice.find params[:choice_id]
      @user         = User.find params[:user_id]
      @attempt      = @choice.attempts.new
      @attempt.user = @user
      if @attempt.save
        render json: { saved: true }
      else
        render json: { saved: false }
      end

    end

  end
end