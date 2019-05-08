# frozen_string_literal: true

class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus, &:timestamps
  end
end
