# frozen_string_literal: true

class CreateJoinTableMenusRecipes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :menus, :recipes do |t|
      t.index %i[menu_id recipe_id]
      t.index %i[recipe_id menu_id]
    end
  end
end
