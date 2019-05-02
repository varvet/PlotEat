# frozen_string_literal: true

class RemoveMenuFromRecipe < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :menu_id
  end
end
