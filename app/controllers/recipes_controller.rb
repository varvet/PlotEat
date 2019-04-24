# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @menu = Menu.first
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create # rubocop:disable Metrics/AbcSize
    if params[:commit] == "Add ingredient"
      @recipe = Recipe.find(params[:id])
      @recipe.ingredients.create(ingredient_params)

      if @recipe.ingredients.last.persisted?
        flash[:success] = "Ingredient successfully added"
        render :ingredients
      else
        flash[:error] = "Something went wrong"
        render "edit"
      end

    else
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        flash[:success] = "Recipe successfully created"
        redirect_to recipe_path(@recipe)
      else
        flash[:error] = "Something went wrong"
        render "new"
      end
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def ingredient_params
    params.permit(:name, :quantity)
  end
end
