module Api
  class BundlesController < ActionController::Base

    def show
      @bundle = Bundle.find params[:id]
    end

  end
end