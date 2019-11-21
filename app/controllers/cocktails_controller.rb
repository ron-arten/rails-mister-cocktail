class CocktailsController < ApplicationController

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
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  def edit
    @cocktail = Cocktail.find(cocktails_params)
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path
  end

  def destroy
  end

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
