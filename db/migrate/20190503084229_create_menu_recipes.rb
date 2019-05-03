# frozen_string_literal: true

class CreateMenuRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_recipes, &:timestamps
  end
end
