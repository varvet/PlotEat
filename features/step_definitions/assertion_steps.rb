# frozen_string_literal: true

Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("the name for {string} should be {string}") do |user_email, _user_full_name|
  user = User.find_by(email: user_email)
  expect(user.full_name).to eq user_full_name
end

Then("I sould not see {string}") do |expected_text|
  expect(page).to have_no_content expected_text
end

Then("I should be on the log in page") do
  expect(current_path).to eq log_in_path
end

Then("Show me the page") do
  save_and_open_page
end
