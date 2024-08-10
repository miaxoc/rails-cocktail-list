class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      return redirect_to dose_path(@dose)
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
    params.require(:dose).permit(:cocktail_id, :description)
  end
end
