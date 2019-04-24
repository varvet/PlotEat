# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_one :menu
  validates :title, presence: true
  validates :description, presence: true
end
