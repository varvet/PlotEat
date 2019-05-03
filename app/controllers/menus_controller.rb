# frozen_string_literal: true

class MenusController < ApplicationController
  skip_before_action :require_login
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
