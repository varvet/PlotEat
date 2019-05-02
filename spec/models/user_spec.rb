# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :crypted_password }

  describe "Association" do
    it { is_expected.to have_one(:menu) }
  end
end
