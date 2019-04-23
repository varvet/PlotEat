# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :recipes, dependent: :destroy
end
