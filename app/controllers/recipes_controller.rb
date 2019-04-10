class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipie = Recipe.new(recipe_params)
    if @recipie.save
      flash[:success] = "Recipe successfully created"
      redirect_to recipe_path(@recipie)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  private
  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end
  
end
