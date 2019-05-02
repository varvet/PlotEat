# frozen_string_literal: true

User.create(
  email: "groot@theguardians.com",
  password: "iamgroot"
)

User.create(
  email: "rocket@theguardians.com",
  password: "watsaraccoon"
)
# Recipe.create(
#   title: "Turkey Sliders",
#   description: "Mini turkey burgers made with goat cheese and sun-dried tomatoes! This recipe makes great regular sized burgers, too!",
#   ingredient.create(name: "ground turkey", quantity: 1)
#   ingredient.create(name: "goat cheese", quantity: 0.34)
#   ingredient.create(name: "sundried tomatoes", quantity: 0.25)
#   directions: "Mix the ground turkey, goat cheese, sun-dried tomatoes, garlic, panko bread crumbs, salt, pepper, and hot chili flakes together in a large bowl with your hands until evenly mixed. Form the mixture into patties about 3-inches in diameter. Dust each patty lightly with flour on each side. This will allow patties to brown nicely in oil.
#               Heat the olive oil in a large skillet over medium-high heat; cook the patties in the hot oil until browned, 2 to 3 minutes per side. Pour the white wine over the patties, place a cover over the skillet, and continue cooking until the sliders are no longer pink inside and the juices run clear, about 5 minutes. Remove the sliders to a plate lined with paper towels to drain. Serve on the mini dinner rolls.",
#         user: User.find_by(email: "rocket@theguardians.com"),
#  category_id: 1
# )
