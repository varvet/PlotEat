class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  
end
