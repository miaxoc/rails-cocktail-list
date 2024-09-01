class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.build(dose_params)
    # @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
      # redirect_to @cocktail
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to dose_path(@dose), status: :see_other
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end

end
