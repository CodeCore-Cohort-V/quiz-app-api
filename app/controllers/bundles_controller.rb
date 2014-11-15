class BundlesController < ApplicationController
  before_action :find_bundle, only: [:edit, :show, :update, :destroy]
  # before_action :authenticate_user!

  def new
    @bundle = Bundle.new
    @bundle.questions.build
  end

  def create
    @bundle = Bundle.new 
    if @bundle.save
      redirect_to root_path, notice: "Bundle created"
    else
      flash.now[:alert] = 'Bundle could not be created'
      render :new
    end
  end

  def edit
    @questions = @bundle.questions.all
  end

  def update
  end

  def destroy  
  end

  private

  def find_bundle
   @bundle = Bundle.find params[:id]
 end

 def bundle_params
  params.require(:bundle).permit(:difficulty)
end

end
