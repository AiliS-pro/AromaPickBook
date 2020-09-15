class AromasController < ApplicationController

  before_action :aroma_params, only: [:create, :update]

  def index
    @aromas = Aroma.all
  end

  def new
    @aroma = Aroma.new
  end

  def create
    Aroma.create(aroma_params)
    redirect_to root_path
  end

  def edit
    @aroma = Aroma.find(params[:id])
  end

  def update
    aroma = Aroma.find(params[:id])
    aroma.update(aroma_params)
    redirect_to root_path
  end

  private
  def aroma_params
    params.require(:aroma).permit(:name, :family_name, :fragrance_note, :fragrance_type, :explain_text, :image)
  end
end
