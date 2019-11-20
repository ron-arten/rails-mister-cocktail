class CocktailController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
