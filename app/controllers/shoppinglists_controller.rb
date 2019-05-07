# frozen_string_literal: true

class ShoppinglistsController < ApplicationController
  def show
    @shoppinglist = current_user.menu.recipes
  end
end
