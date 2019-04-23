# frozen_string_literal: true

class MenusController < ApplicationController
  def update
    @menu = Menu.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])
    @menu.recipes << recipe
    flash[:success] = "Recipe was added to menu"
    redirect_to controller: :recipes, action: :index
  end

  def show
    @menu = Menu.first
  end
end
