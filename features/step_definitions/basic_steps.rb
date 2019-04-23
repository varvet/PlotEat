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
