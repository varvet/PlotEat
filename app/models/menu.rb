# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :menu_recipe
  has_many :recipes, through: :menu_recipe
  belongs_to :user
end
