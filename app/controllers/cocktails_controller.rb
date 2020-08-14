class CocktailsController < ApplicationController

def home
    @cocktails = Cocktail.all
end
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to @cocktail
  end
    def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path, notice: 'Garden was successfully destroyed.'
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
