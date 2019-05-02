# frozen_string_literal: true

Given("I visit the site") do
  visit root_path
end

When("I click {string}") do |link|
  click_link_or_button link
end

When("I fill in {string} with {string}") do |field, text|
  fill_in field, with: text
end

Given("these recipes exist") do |table|
  table.hashes.each do |recipe|
    Recipe.create(recipe)
  end
end

Given("I visit the {string} page") do |recipe_title|
  recipe = Recipe.find_by(title: recipe_title)
  visit recipe_path(recipe)
end

When("I click {string} for {string}") do |button, recipe_title|
  recipe = Recipe.find_by(title: recipe_title)
  within("#recipe_#{recipe.id}") do
    click_on button
  end
end

Given("there is a menu") do
  @menu = Menu.create
end

When("I visit menu page") do
  visit menu_path(@menu)
end

Given("we have the following users") do |table|
  table.hashes.each do |field|
    user = create(:user, field)
    Menu.create(user: user)
  end
end

Given("logged in as {string} password {string}") do |email, password|
  click_on "Log in"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_on "Submit"
end
