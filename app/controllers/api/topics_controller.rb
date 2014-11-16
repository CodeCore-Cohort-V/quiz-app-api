module Api
  class TopicsController < ApiController
    respond_to :json

    def index
      @topics = Topic.all
    end

    def show

    end

  end
end