# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, uniqueness: true, email_format: { message: "has invalid format" }
  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
end
