module Api
  class QueuersController < ActionController::Base

    def index
      @user = User.find params[:user_id]
      @bundles = @user.queued_bundles
    end

    def create
      @user = User.find params[:user_id]
      @bundle = Bundle.find params[:bundle_id]
      @queuer = @bundle.queuers.new
      @queuer.user = @user
      if @queuer.save
        render json: { saved: true }
      else
        render json: { saved: false }
      end
    end

  end
end