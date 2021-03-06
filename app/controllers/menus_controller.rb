# frozen_string_literal: true

class MenusController < ApplicationController
  def update
    @menu = Menu.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])
    @menu.recipes << recipe
    redirect_to controller: :recipes, action: :index
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def destroy
    @menu = Menu.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])
    if @menu.user == current_user && @menu.recipes.destroy(recipe.id)
      flash[:success] = "Recipe was successfully removed."
    else
      flash[:error] = "Something went wrong"
    end
    redirect_to menu_path(@menu)
  end
end
