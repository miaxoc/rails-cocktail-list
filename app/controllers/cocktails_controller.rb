class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all

  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      return redirect_to cocktail_path(@cocktail)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktail_path(@cocktail), status: :see_other
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
