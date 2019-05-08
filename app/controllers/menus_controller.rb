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
end
