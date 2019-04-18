# frozen_string_literal: true

require "rails_helper"
RSpec.describe Recipe, type: :model do
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :description }

  describe "Association" do
    it { is_expected.to have_many(:ingredients) }
  end
end
