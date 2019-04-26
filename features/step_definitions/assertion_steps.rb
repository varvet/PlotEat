# frozen_string_literal: true

Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("the name for {string} should be {string}") do |user_email, _user_full_name|
  user = User.find_by(email: user_email)
  expect(user.full_name).to eq user_full_name
end

Then("Show me the page") do
  save_and_open_page
end
