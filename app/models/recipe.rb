# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :menu_recipe
  has_many :menus, through: :menu_recipe
  validates :title, presence: true
  validates :description, presence: true
end
