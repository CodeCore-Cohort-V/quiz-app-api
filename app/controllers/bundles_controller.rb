class BundlesController < ApplicationController

  before_action :find_bundle, only[:edit, :show, :update, :destroy]

  def new
    @bundle = Bundle.new
  end

  def create
    @bundle = Bundle.new 

    if @bundle.save
  end

  def show
    
  end

  def edit
    @bundle = Bundle.find params[:id] bundle_params
    @question = Question.all
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
