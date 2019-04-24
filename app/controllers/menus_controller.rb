# frozen_string_literal: true

class MenusController < ApplicationController
  def update
    @menu = Menu.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])

    if @menu && recipe
      if !@menu.recipes.include?(recipe)
        @menu.recipes << recipe
        flash[:success] = "Recipe was added to menu"
      else
        flash[:notice] = "Menu allready has this recipe"
      end
      redirect_to controller: :recipes, action: :index
    else
      flash[:error] = "Something went wrong"
    end
  end

  def show
    @menu = Menu.first
  end
end
