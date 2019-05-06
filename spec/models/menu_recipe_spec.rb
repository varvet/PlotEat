# frozen_string_literal: true

require "rails_helper"

RSpec.describe MenuRecipe, type: :model do
  it { is_expected.to belong_to :menu }
  it { is_expected.to belong_to :recipe }
end
