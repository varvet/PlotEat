# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes
  belongs_to :user
end
