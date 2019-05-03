# frozen_string_literal: true

class MenuRecipe < ApplicationRecord
  belongs_to :menu
  belongs_to :recipe
end
