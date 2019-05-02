# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_and_belongs_to_many :menus
  validates :title, presence: true
  validates :description, presence: true
end
