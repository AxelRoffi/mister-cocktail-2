class DosesController < ApplicationController
  def create
    dose = Dose.create(params_dose)
    redirect_to cocktail_path(dose.cocktail)
  end


  private
  def params_dose
    params.require(:dose).permit(:description,:ingredient_id,:cocktail_id)
  end
end
