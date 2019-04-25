# frozen_string_literal: true

class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.ingredients.create(ingredient_params)

    if @recipe.ingredients.last.persisted?
      flash[:success] = "Ingredient successfully added"
      render :ingredients
    else
      flash[:error] = "Something went wrong"
      render controller: :recipes, action: :edit
    end
  end

  private

  def ingredient_params
    params.permit(:name, :quantity)
  end
end
