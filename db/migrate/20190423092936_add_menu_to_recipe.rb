# frozen_string_literal: true

class AddMenuToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :menu, foreign_key: true
  end
end
