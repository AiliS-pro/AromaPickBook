class AromasController < ApplicationController

  def index
    @aromas = Aroma.all
  end

  private
  def aroma_params
    params.require(:aroma).permit(:name, :family_name, :fragrance_note, :fragrance_type, :explain_text, :img)
  end
end
