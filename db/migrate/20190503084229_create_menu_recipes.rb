# frozen_string_literal: true

class CreateMenuRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_recipes do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
