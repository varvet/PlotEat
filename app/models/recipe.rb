# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients
  validates :title, presence: true
  validates :description, presence: true
end
