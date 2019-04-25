# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :recipes
end
