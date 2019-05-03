# frozen_string_literal: true

class RemoveJoinTableMenusRecipes < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :menus, :recipes
  end
end
