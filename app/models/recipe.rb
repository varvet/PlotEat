# frozen_string_literal: true
class Recipe < ApplicationRecord
    validates_presence_of :title, :description
end
