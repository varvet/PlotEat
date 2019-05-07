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

Given("we have the following users") do |table|
  table.hashes.each do |field|
    user = create(:user, field)
    Menu.create(user: user)
  end
end

Given("logged in as {string} password {string}") do |email, password|
  @user = User.find_by email: email
  click_on "Log in"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_on "Submit"
end

Given("{string} has these ingredients") do |recipe_title, table|
  recipe = Recipe.find_by(title: recipe_title)
  table.hashes.each do |ingredient|
    recipe.ingredients.create(ingredient)
  end
end

Given("{string} has the following recipes in his menu") do |email, table|
  user = User.find_by(email: email)
  table.hashes.each do |recipe|
    recipe = Recipe.find_by(title: recipe[:title])
    user.menu.recipes << recipe
  end
end

Given("I am on the menu page") do
  visit menu_path(@user.menu)
end

When("I am on the shoppinglist page") do
  pending # Write code here that turns the phrase above into concrete actions
end
