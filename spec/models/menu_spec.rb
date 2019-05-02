# frozen_string_literal: true

require "rails_helper"

RSpec.describe Menu, type: :model do
  describe "Association" do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_and_belong_to_many :recipes }
  end
end
