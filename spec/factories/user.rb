# frozen_string_literal: true

FactoryBot.define do
  factory :user do |u|
    u.sequence(:email) { |i| "name#{i}@test.com" }
    u.password { "password" }
  end
end
