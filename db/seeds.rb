# frozen_string_literal: true
MenuRecipe.destroy_all
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
Ingredient.create(name: "Turkey", quantity: 1, recipe: recipe)
Ingredient.create(name: "Goat cheese", quantity: 2, recipe: recipe)
Ingredient.create(name: "Sundried tomatoes", quantity: 6, recipe: recipe)

recipe = Recipe.create(
  title: "Chicken Piccata",
  description: "Slices of chicken get dredged in seasoned flour, sautéed in butter, and smothered in an addictively tangy lemon-butter pan sauce studded with salty capers."
)
Ingredient.create(name: "Chicken", quantity: 2, recipe: recipe)
Ingredient.create(name: "Capers", quantity: 2, recipe: recipe)
Ingredient.create(name: "White wine", quantity: 1, recipe: recipe)

recipe = Recipe.create(
  title: "Spring Minestrone",
  description: "With leeks, fennel, sugar snap peas, and English peas, this soup is perfect for ushering in spring. While it’s definitely a lighter take on the classic minestrone, it gets a lot of depth of flavor from the ground spices, toasted garlic, and white miso."
)
Ingredient.create(name: "Fennel", quantity: 1, recipe: recipe)
Ingredient.create(name: "Coriander seeds", quantity: 1, recipe: recipe)
Ingredient.create(name: "English peas", quantity: 20, recipe: recipe)

recipe = Recipe.create(
  title: "Best Chocolate Chip Cookies",
  description: "What makes this chocolate chip cookie recipe BA’s Best? The addition of browned butter really puts these cookies over the top. It makes them crispy-edged, chewy-centered, yet still rooted in classic cookie flavor. Oh, and no mixer required, so there’s no excuse not to make them."
)
Ingredient.create(name: "Chocolate", quantity: 6, recipe: recipe)
Ingredient.create(name: "Egg", quantity: 1, recipe: recipe)
Ingredient.create(name: "Flour", quantity: 200, recipe: recipe)

recipe = Recipe.create(
  title: "Roasted Salmon with Citrus Salsa Verde",
  description: "Paprika gives smoky, spicy balance to bright citrus and herb flavors. If your paprika has been hanging out in the back of the spice cabinet for longer than six months, though, it might be time to start fresh."
)
Ingredient.create(name: "Salmon", quantity: 1, recipe: recipe)
Ingredient.create(name: "Cilantro", quantity: 3, recipe: recipe)
Ingredient.create(name: "Parsley", quantity: 3, recipe: recipe)

recipe = Recipe.create(
  title: "White Pesto Pasta",
  description: "This is the direct inverse of the normal basil pesto you know and love. It’s built on a combination of toasted nuts, creamy ricotta, and salty Parmesan, with a little kick coming from raw garlic and fresh oregano. You don’t need a food processor, a mortar and pestle, or a blender—in fact, the entire sauce comes together in the same bowl you can use for serving."
)
Ingredient.create(name: "Walnuts", quantity: 3, recipe: recipe)
Ingredient.create(name: "Ricotta", quantity: 4, recipe: recipe)
Ingredient.create(name: "Parmesan", quantity: 2, recipe: recipe)

recipe = Recipe.create(
  title: "Basque Burnt Cheesecake",
  description: "This cheesecake is the alter ego to the classic New York–style cheesecake with a press-in cookie crust. "
)
Ingredient.create(name: "Cream cheese", quantity: 2, recipe: recipe)
Ingredient.create(name: "Cream", quantity: 2, recipe: recipe)
Ingredient.create(name: "Egg", quantity: 6, recipe: recipe)
