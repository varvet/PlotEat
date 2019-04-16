# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    binding.pry
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      binding.pry
      flash[:success] = "Recipe successfully created"
      redirect_to recipe_path(@recipe)
    else
      flash[:error] = "Something went wrong"
      render "new"
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end
end
