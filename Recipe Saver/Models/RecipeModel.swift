//
//  RecipeModel.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 27/10/2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Pizza Casserole",
            image: "https://www.simplyrecipes.com/thmb/yHYEPDdQXu6SPUnr_9tMQXd2O7s=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Pizza-Casserole-LEAD-2-a9099cb1eb184f5190d01bad33f6cb4d.jpg",
               description: "Skip pizza delivery tonight! Revamp your beloved pepperoni pizza into this crowd-pleasing casserole with pasta, marinara, pepperoni, and lots of cheese.",
            ingredients: "Salt, for pasta cooking water\n Cooking spray, for greasing the casserole dish\n 16 ounces dry penne pasta\n 8 ounces Italian sausage links (raw or pre-cooked)\n 1/2 red bell pepper, seeded and chopped\n 1/2 green bell pepper, seeded and chopped\n 1/2 small red onion, chopped\n 4 ounces baby bella mushrooms, trimmed and sliced\n 1/4 cup black olives, sliced\n 24 ounces (2 1/2 cups) store-bought or homemade marinara sauce",
            directions: "Preheat the oven to 375°F. Grease a 9x13-inch casserole dish with cooking spray. Set it aside. \n Fill a large pot with water, season the water generously with salt, and bring it up to a boil over high heat. Cook the pasta in the boiling water according to the package instructions, until al dente. Strain the pasta into a colander placed in the sink and set it aside.\n Set the sausage links on a cutting board and use a sharp knife to cut them in half lengthwise. Then, cut them into 1/2-inch thick half moons. If using raw sausages, they may fall apart a little and that's okay. \n Heat a medium skillet over medium heat. Add the sausages and cook for 6 to 8 minutes, stirring them every 1 to 2 minutes, until evenly browned. You won’t need any oil since the sausages will release enough to keep them from sticking to the skillet. Turn the heat off. Tilt the skillet and use a spoon to scoop out and discard as much grease as possible.",
            category: "Main",
            datePublished: "2020-11-11",
            url: "https://www.simplyrecipes.com/thmb/yHYEPDdQXu6SPUnr_9tMQXd2O7s=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Pizza-Casserole-LEAD-2-a9099cb1eb184f5190d01bad33f6cb4d.jpg"
        ),
        
        Recipe(
            name: "Sausage, Pepper, and Potato Bake",
               image: "https://www.simplyrecipes.com/thmb/-MQDgn2YEvygqyeZ-z3Yxy1ZAgI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2018__11__Sausage-Potato-Bake-LEAD-2-af4240aa7c46444d829b185c1be54a05.jpg",
            description: "This sausage, pepper, and potato bake is a crowd-pleasing and budget-friendly meal that still feels indulgent. Look for kielbasa on sale and round it out with peppers, potatoes, and onions. Don't skip the sauce—it's what makes the whole dish!",
            ingredients: "3 tablespoons olive oil, separated\n 1 1/2 pounds Yukon gold potatoes (about 4 medium), washed and unpeeled\n 1 teaspoon kosher salt, divided \n 1/4 teaspoon freshly ground black pepper, divided\n 5 tablespoons balsamic vinegar\n 2 teaspoons Dijon mustard\n 1 tablespoon fresh rosemary, chopped\n 1 teaspoon whole grain mustard",
            directions: "Preheat the oven to 400°F and prep the pan.\n Pour 1 tablespoon of the olive oil into an 9- x13-inch baking dish and use your hand, or a brush, to grease the bottom and sides of the dish. This oil will help create a crisp crust on the bottom of the baked potatoes.\n hinly slice the potatoes to about 1/8-inch thick; use a mandoline if needed. Try to keep the potato slices together as you cut as this makes it easier to assemble them in the dish.\n Fan the potatoes slightly in the dish, overlapping them like a fallen set of dominoes in the pan and creating four rows of potatoes. Sprinkle with 1/2 teaspoon of kosher salt and an 1/8 teaspoon of the black pepper.\n Bake the potatoes for 30 minutes.\n Combine the vinegar, 2 tablespoons olive oil, both mustards, rosemary, garlic, and the remaining salt and pepper in a glass jar with a tight-fitting lid (or in a bowl).\n Shake the ingredients together vigorously until combined. If you’re making the dressing in a bowl, use a whisk or an immersion blender to combine. Set this aside.",
            category: "Main",
            datePublished: "2019-06-26",
            url: "https://www.simplyrecipes.com/recipes/sausage_pepper_and_potato_bake/"),
        
        Recipe(
            name: "Parker House Dinner Rolls",
            image: "https://www.simplyrecipes.com/thmb/ru4S2DOlEoZjFzNG2L2jgDWlrdY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2017__09__2017-10-04-ParkerHouseRolls-10-4a22d25409ff438394fa7916fce7615a.jpg",
            description: "Parker House rolls are irresistibly soft, buttery, and only require one rise! This famous recipe from Boston Parker House Hotel is the ultimate dinner roll recipe for any holiday table or special gathering.",
            ingredients: "2 1/4 teaspoons (1 envelope) active dry yeast\n3 tablespoons lukewarm water\n1 1/2 cups (355ml) whole milk\n3 tablespoons unsalted butter, cut into chunks\n3 tablespoons sugar\n2 teaspoons salt",
            directions: "In a bowl large enough to hold all the dough, sprinkle the yeast over the water and let it dissolve, about 5 minutes.\n In a saucepan over low heat, combine the milk, 3 tablespoons cut-up butter, sugar, and salt. Heat just until the butter melts and the milk feels warm to the touch. If the milk gets too hot, remove from the heat and let it cool to lukewarm. \n Stir the yeast mixture with a wooden spoon to mix the dissolved yeast and water. Tip in the milk mixture, still stirring, until smooth. Add 2 cups of the flour and stir again until the mixture is almost smooth, with just a few lumps. \n Continue stirring in flour, 1 cup at a time, until the mixture forms a dough. It will be very soft. \n Turn the dough out onto a floured counter and knead for a few minutes until the dough is smooth, adding more flour as needed if the dough is too sticky.", category: "Side", datePublished: "2022-09-13", url: "https://www.simplyrecipes.com/recipes/parker_house_rolls/"),
        
        Recipe(
            name: "Margarita (Classic Recipe!)",
            image: "https://www.acouplecooks.com/wp-content/uploads/2020/03/Margarita-025.jpg",
            description: "Here’s the absolute best simple margarita recipe! Serve this drink on the rocks with the classic ingredients: lime, Cointreau and tequila.",
            ingredients: "1 ½ ounces tequila\n 1 ounce Cointreau or Triple Sec\n ¾ ounce lime juice",
            directions: "Rim the glass with salt. A classic margarita has salt on the rim. Why? The salt enhances the sweet and sour flavors in the drink.\n Shake in a cocktail shaker. Take that tequila, Cointreau and lime juice and shake it together in a cocktail shaker with 4 ice cubes.\n Strain into a glass and add ice. Strain the drink into a glass and add ice. What kind of glass to use for the best margarita? The margarita drink is often served in a lowball or Old Fashioned glass as you see here, though of course the classic curved margarita glass works too.",
            category: "Drink",
            datePublished: "2015-08-19",
            url: "https://www.acouplecooks.com/classic-margarita/"),
        
        Recipe(
            name: "Coconut yoghurt cake",
            image: "https://img.delicious.com.au/T1KdU1cr/del/2020/08/coconut-yoghurt-cake-137201-1.jpg",
            description: "Zero waste tip: 'When it comes to storing perishables like dairy, the freezer is your best friends. Milk and yoghurt can be stored in ice cube trays and popped out to use in smoothies.' - Ronni Kahn.",
            ingredients: "200g unsalted butter, at room temperature, chopped\n 2 tsp finely grated lime zest, plus extra to serve\n 3/4 cup (165g) caster sugar\n 3 eggs, at room temperature\n 60g fine semolina\n 1/2 cup (50g) almond meal",
            directions: "Preheat oven to 180°C. Grease a 25cm round springform pan and line the base and side with baking paper.\n2.Place the butter, lime zest and sugar in the bowl of a stand mixer with the paddle attachment and beat for 5-6 minutes until pale and fluffy. Add eggs, 1 at time, and mix to combine.\n3.Combine the semolina, almond meal, flour and coconut together in a bowl and gently stir into the egg mixture. Add yoghurt and lime juice, stirring until just combined (be sure not to overwork the mixture). Spoon batter into prepared pan and bake for 1 hour or until lightly golden on top and a skewer inserted in the centre comes out clean. Remove from the oven, cover with foil and stand for 10 minutes.",
            category: "Dessert", datePublished: "2022-09-28", url: "https://www.delicious.com.au/recipes/coconut-yoghurt-cake-recipe/943yn22o?r=recipes/collections/77cijfrr"),
        
        Recipe(
            name: "Rasta Pasta with Jerk Chicken",
            image: "https://www.simplyrecipes.com/thmb/Lh21998mDdLXCpUhuwDNOK6Zom4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Rasta-Pasta-Jerk-Chicken-LEAD-05-1137bfafa6f34303a7fd7e392fa93f07.jpg",
            description: "Toss penne with a creamy jerk-infused sauce for this Jamaican pasta dish. Bell peppers lend color. We add chicken, but try shrimp, too!",
            ingredients: "1 medium onion, roughly chopped\n 10 cloves garlic, peeled\n 1 small Scotch bonnet or habanero pepper\n 5 to 6 stems of thyme, leaves removed\n 3 tablespoons water\n 8 ounces penne\n 4 teaspoons neutral oil, to cook chicken and vegetables\n 1/2 green pepper, thinly sliced\n 1/2 red pepper, thinly sliced\n 1/2 yellow pepper, thinly sliced", directions: "Bring a large pot of water to boil. Add salt to the water to help flavor the pasta as it cooks. (1 tablespoon of salt for every 2 quarts of water.)\n In a food processor add the onion, garlic, Scotch bonnet or habanero pepper, thyme, and water. Pulse until the texture is slightly smooth and thick. \n Put the chicken pieces into a large mixing bowl.\n Roll the lime on the countertop to soften. Slice in half and squeeze the juice over the chicken. You can mix the lime halves with the chicken and leave it until you’re ready to rinse. Fill the bowl with water just until it covers the chicken. Using a wooden spoon or tongs, stir the chicken. Cover with plastic wrap and let it sit in the acidic water for 15-20 minutes.", category: "Main", datePublished: "2009-02-19", url: "https://www.simplyrecipes.com/rasta-pasta-with-jerk-chicken-recipe-5235441"),
        
        Recipe(
            name: "Perfect Italian Salad",
            image: "https://www.acouplecooks.com/wp-content/uploads/2020/05/Italian-Salad-051.jpg",
            description: "This classic Italian salad is your soul mate side dish! It features crisp veggies, crunchy croutons, tangy pepperoncini, and a punchy homemade dressing.",
            ingredients: "1/2 recipe Homemade Croutons (or use purchased or omit for gluten-free)\n 1 recipe Homemade Italian Dressing\n 1 Romaine heart (3 cups)\n 5 cups butter lettuce\n 1 handful sliced red onion\n ½ cup sliced cherry tomatoes\n ½ cup sliced black olives (or halved olives)", directions: "Make the homemade croutons (or make them in advance).\n Make the Italian dressing.\n Chop romaine and lettuce. Thinly slice the red onion. Slice the tomatoes in half.\n Place the greens in bowls, then top with the vegetables, olives, pepperoncini, Parmesan shavings, and croutons, then drizzle with dressing. Or, you can place them all together in a large serving bowl and toss with the dressing. (If making in advance, refrigerate the components separately and keep the croutons at room temperature. Bring the dressing to room temperature before serving.)",
            category: "Salad", datePublished: "2022-10-18", url: "https://www.acouplecooks.com/italian-salad/"),
        
        Recipe(name: "Homestyle Potato Chips",
               image: "https://www.allrecipes.com/thmb/H2CH26XxMa63pj3yslVBeKmaG3c=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5054024-b3521135772c4cd995856d165fd60ce5.jpg",
               description: "Homemade potato chips are fun and easy. Guaranteed they won't last long! A food processor with a slicing attachment is very helpful for slicing the potatoes. Experiment with the thickness; you may like them thicker or thinner. I like to use olive oil for frying, but you can use safflower, corn, or peanut oil as well as vegetable oil.",
               ingredients: "4 medium potatoes, peeled and sliced paper-thin\n3 tablespoons salt, plus more to taste\n1 quart oil for deep frying", directions: "Transfer potato slices to a large bowl of cold water as you slice them.\nDrain slices and rinse under cold water. Refill the bowl with water, add 3 tablespoons salt, and put slices back in the bowl. Let potatoes soak in the salty water for at least 30 minutes.\nDrain and rinse slices again. Pat dry.\nHeat oil in a deep-fryer to 365 degrees F (185 degrees C).\nWorking in small batches, fry potato slices until golden. Remove with a slotted spoon and drain on paper towels. Continue until all of the slices are fried.\nSeason potato chips with additional salt if desired.",
               category: "Snack",
               datePublished: "2022-04-17",
               url: "https://www.allrecipes.com/recipe/73135/homestyle-potato-chips/"),
        
        Recipe(
            name: "Banana Pancakes",
               image: "https://www.allrecipes.com/thmb/AKLb-cVrCEacbiBruVHmoCOF9yg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/20334-Banana-Pancakes-mfs__2x3-21fe4c9bcb35452dacd21d2f76639e13.jpg",
            description: "Wake up on the right side of the bed with a stack of sweet, cozy, and simple banana pancakes. This top-rated banana pancake recipe is easy to make and it comes together in just 15 minutes, so you don't have to wake up early to enjoy a satisfying breakfast. Learn how to make, store, and serve the best banana pancakes ever.", ingredients: "Flour\nSugar\nBaking Powder\nSalt\nAn Egg\nMilk\nVegetable Oil\nBananas",
            directions: "Combine your dry ingredients (flour, sugar, salt, baking powder) in one bowl and your wet ingredients (egg, milk, vegetable oil, mashed bananas) in another bowl. Add the dry ingredients to the bowl with the wet ingredients, then stir until they're incorporated. It's OK if your batter is slightly lumpy.\nPour the batter in ¼ cup portions onto a lightly oiled pan or griddle over medium-high heat. Cook for a few minutes, flip with a spatula, and cook for another few minutes (or until each side is golden brown).\nServe your banana pancakes immediately. They're delicious alone or with your favorite pancake toppings.", category: "Breakfast", datePublished: "2019-07-01", url: "https://www.allrecipes.com/recipe/20334/banana-pancakes-i/")
        
        
    ]
}
