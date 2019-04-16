# frozen_string_literal: true

require "rails_helper"

RSpec.describe Ingredient, type: :model do
  it { is_expected.to have_db_column :name }
  it { is_expected.to have_db_column :quantity }

  describe "Association" do
    it { is_expected.to belong_to :recipe }
  end
end
