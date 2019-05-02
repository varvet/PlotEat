# frozen_string_literal: true

if Rails.env.development?
  Recipe.destroy_all
  User.destroy_all
  user = User.create(
    email: "groot@theguardians.com",
    password: "iamgroot"
  )
  Menu.create(user: user)

  user = User.create(
    email: "rocket@theguardians.com",
    password: "watsaraccoon"
  )
  Menu.create(user: user)

  recipe = Recipe.create(
    title: "Turkey Sliders",
    description: "Mini turkey burgers made with goat cheese and sun-dried tomatoes! This recipe makes great regular sized burgers, too!"
  )
  Ingredient.create(name: "ground turkey", quantity: 1, recipe: recipe)
  Ingredient.create(name: "goat cheese", quantity: 0.34, recipe: recipe)
  Ingredient.create(name: "sundried tomatoes", quantity: 0.25, recipe: recipe)
end
