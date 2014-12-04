class BundlesController < ApplicationController
  before_action :find_bundle, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!

  def index
    @bundles = current_user.bundles
  end

  def new
    @bundle = Bundle.new
    # @bundle.questions.build
  end

  def create
    @bundle = Bundle.new(bundle_params) 
    @bundle.user = current_user
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
# def toggle_approved
# @bundle = Bundle.find params[:id]
# @bundle.toggle!(:approved)
# end
  def update

    @bundle.update bundle_params
    if @bundle.save
      redirect_to @bundle, notice: "Updated Successfully!! :D"
    else
      render edit
    end
  end

  def show
  end

  def destroy  
    if @bundle.destroy
      redirect_to root_path
    else 
      redirect_to root_path
    end
  end

  private
 
  def find_bundle
    @bundle = Bundle.find params[:id]
  end

  def bundle_params
    params.require(:bundle).permit(:name, :difficulty, questions_attributes: [:id, :question_type, :content, :_destroy, choices_attributes: [:id, :correct, :content, :_destroy ]])
  end

end
