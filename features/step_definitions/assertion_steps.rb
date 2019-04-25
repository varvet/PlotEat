# frozen_string_literal: true

Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("Show me the page") do
  save_and_open_page
end
