# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :menu_recipes
  has_many :menus, through: :menu_recipes
  validates :title, presence: true
  validates :description, presence: true
end
