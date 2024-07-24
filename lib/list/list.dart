class Dish {
  final String id;
  final String name;
  final String category;
  final String description;
  final String imageAsset;
  final String recipe;

  Dish({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.imageAsset,
    required this.recipe,
  });

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      description: json['description'],
      imageAsset: json['imageAsset'],
      recipe: json['recipe'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'description': description,
      'imageAsset': imageAsset,
      'recipe': recipe,
    };
  }

  static List<Dish> get dishes => [
        Dish(
            id: '1',
            name: 'Adobo',
            category: 'Chicken',
            description:
                'A popular Filipino dish made with chicken or pork simmered in soy sauce, vinegar, garlic, and spices.',
            imageAsset: 'assets/adobo.jpg',
            recipe: 'Ingredients:\n'
                '- 2 lbs chicken thighs or drumsticks\n'
                '- 1/2 cup soy sauce\n'
                '- 1/2 cup vinegar (white or cane vinegar)\n'
                '- 1/2 cup water\n'
                '- 1 medium onion, sliced\n'
                '- 4 cloves garlic, minced\n'
                '- 2 bay leaves\n'
                '- 1 tsp black peppercorns\n'
                '- 1 tbsp sugar (optional)\n'
                '- 2 tbsp cooking oil\n'
                '- Salt and pepper to taste\n'
                '- Optional: sliced green onions and hard-boiled eggs for garnish\n\n'
                'Instructions:\n\n'
                '1.Marinate the Chicken:\n'
                '   - In a large bowl, combine the soy sauce, vinegar, water, sliced onion, minced garlic, bay leaves, black peppercorns, and sugar (if using).\n'
                '   - Add the chicken pieces, ensuring they are well-coated with the marinade.\n'
                '   - Cover and refrigerate for at least 30 minutes to 2 hours (or overnight for best results).\n\n'
                '2.Cook the Chicken:\n'
                '   - In a large pot or skillet, heat the cooking oil over medium-high heat.\n'
                '   - Remove the chicken from the marinade, allowing excess marinade to drip off. Reserve the marinade.\n'
                '   - Sear the chicken pieces in the hot oil until browned on all sides. This should take about 5-7 minutes.\n\n'
                '3.Simmer:\n'
                '   - Pour the reserved marinade into the pot with the chicken.\n'
                '   - Bring to a boil, then reduce the heat to low and cover the pot.\n'
                '   - Simmer for about 30 minutes, stirring occasionally, until the chicken is cooked through and tender. Add water if the sauce reduces too much.\n\n'
                '4.Thicken the Sauce:\n'
                '   - If the sauce is too thin, remove the chicken pieces and let the sauce simmer uncovered until it reaches your desired consistency.\n'
                '   - If the sauce is too thick, add a bit of water and stir.\n\n'
                '5.Season and Serve:\n'
                '   - Taste the sauce and season with salt and pepper as needed.\n'
                '   - Serve the adobo hot, garnished with sliced green onions and hard-boiled eggs if desired.\n'
                '   - Adobo pairs wonderfully with steamed white rice.\n'),
        Dish(
          id: '2',
          name: 'Sinigang na Baboy',
          category: 'Pork',
          description: 'A sour tamarind-based soup with pork and vegetables.',
          imageAsset: 'assets/sinigang_na_baboy.jpg',
          recipe: 'Ingredients:\n'
              '- 2 lbs pork ribs or pork belly, cut into pieces\n'
              '- 1 medium onion, quartered\n'
              '- 2-3 medium tomatoes, quartered\n'
              '- 1 packet tamarind soup base mix (sinigang mix)\n'
              '- 1-2 cups tamarind juice (optional, for extra sourness)\n'
              '- 1 medium radish, sliced\n'
              '- 1-2 cups string beans, cut into 2-inch pieces\n'
              '- 1 cup eggplant, sliced\n'
              '- 1 cup kangkong (water spinach) or spinach\n'
              '- 2-3 green chili peppers (optional, for extra heat)\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Prepare the Pork:\n'
              '   - In a large pot, add the pork pieces and enough water to cover them.\n'
              '   - Bring to a boil, then reduce heat to simmer and cook for about 30 minutes or until the pork is tender.\n'
              '   - Skim off any impurities that rise to the surface.\n\n'
              '2. Add Vegetables:\n'
              '   - Add the onion and tomatoes to the pot.\n'
              '   - Continue to simmer for another 10 minutes until the vegetables are soft.\n\n'
              '3. Add Tamarind and Seasonings:\n'
              '   - Stir in the tamarind soup base mix and tamarind juice (if using).\n'
              '   - Add the radish, string beans, and eggplant.\n'
              '   - Simmer for another 10-15 minutes until the vegetables are tender.\n\n'
              '4. Final Touches:\n'
              '   - Add the kangkong or spinach and green chili peppers (if using).\n'
              '   - Season with salt and pepper to taste.\n'
              '   - Cook for an additional 5 minutes, then remove from heat.\n\n'
              '5. Serve:\n'
              '   - Serve the Sinigang na Baboy hot with steamed rice.\n'
              '   - Enjoy the sour and savory flavors of this comforting Filipino soup.\n',
        ),
        Dish(
          id: '3',
          name: 'Lechon Kawali',
          category: 'Pork',
          description:
              'Crispy deep-fried pork belly served with a side of liver sauce.',
          imageAsset: 'assets/lechon_kawali.jpg',
          recipe: 'Ingredients:\n'
              '- 2 lbs pork belly\n'
              '- 1 onion, quartered\n'
              '- 4 cloves garlic, crushed\n'
              '- 2 bay leaves\n'
              '- 1 tsp whole peppercorns\n'
              '- Salt to taste\n'
              '- Cooking oil for deep-frying\n\n'
              'Instructions:\n\n'
              '1. Prepare the Pork Belly:\n'
              '   - In a large pot, add the pork belly, onion, garlic, bay leaves, peppercorns, and salt.\n'
              '   - Add enough water to cover the pork belly.\n'
              '   - Bring to a boil, then reduce heat and simmer for about 1-1.5 hours, or until the pork is tender.\n'
              '   - Remove the pork from the pot and let it cool.\n'
              '   - Pat the pork belly dry with paper towels.\n\n'
              '2. Deep-Fry:\n'
              '   - Heat the cooking oil in a deep-fryer or large pot to 350°F (175°C).\n'
              '   - Carefully lower the pork belly into the hot oil.\n'
              '   - Fry until the skin is golden brown and crispy, about 10-15 minutes.\n'
              '   - Remove the pork belly from the oil and drain on paper towels.\n\n'
              '3. Serve:\n'
              '   - Slice the Lechon Kawali into pieces.\n'
              '   - Serve hot with a side of liver sauce or your preferred dipping sauce.\n'
              '   - Enjoy the crispy, savory flavors of this Filipino favorite.\n',
        ),
        Dish(
          id: '4',
          name: 'Kare-Kare',
          category: 'Pork',
          description:
              'A peanut-based stew with oxtail, tripe, and vegetables, often served with bagoong (fermented shrimp paste).',
          imageAsset: 'assets/kare_kare.jpg',
          recipe: 'Ingredients:\n'
              '- 2 lbs oxtail, cut into pieces\n'
              '- 1 lb beef tripe, cut into pieces\n'
              '- 1/2 cup peanut butter\n'
              '- 1/4 cup rice flour or cornstarch (for thickening)\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 1 cup bagoong (fermented shrimp paste)\n'
              '- 2-3 cups water or beef broth\n'
              '- 1 eggplant, sliced\n'
              '- 1 cup string beans, cut into 2-inch pieces\n'
              '- 1 cup banana hearts (optional), sliced\n'
              '- 2 tbsp cooking oil\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Cook the Meat:\n'
              '   - In a large pot, add the oxtail and tripe, then cover with water.\n'
              '   - Bring to a boil, then reduce heat and simmer for about 2-3 hours, or until the meat is tender.\n'
              '   - Remove the meat from the pot and set aside. Reserve the broth.\n\n'
              '2. Prepare the Sauce:\n'
              '   - In a separate pan, heat the cooking oil over medium heat.\n'
              '   - Sauté the onion and garlic until softened and aromatic.\n'
              '   - Add the peanut butter and cook, stirring, until well blended with the onions and garlic.\n'
              '   - Gradually add some of the reserved broth to the peanut butter mixture, stirring to create a smooth sauce.\n'
              '   - If using rice flour or cornstarch, mix it with a little water to make a slurry and stir into the sauce to thicken.\n\n'
              '3. Combine and Simmer:\n'
              '   - Return the cooked oxtail and tripe to the pot with the peanut sauce.\n'
              '   - Add more broth if needed to reach your desired consistency.\n'
              '   - Simmer for about 10-15 minutes, then add the eggplant, string beans, and banana hearts (if using).\n'
              '   - Continue to cook until the vegetables are tender.\n\n'
              '4. Season and Serve:\n'
              '   - Season with salt and pepper to taste.\n'
              '   - Serve the Kare-Kare hot, with a side of bagoong (fermented shrimp paste) and steamed rice.\n'
              '   - Enjoy the rich and savory flavors of this Filipino classic.\n',
        ),
        Dish(
          id: '5',
          name: 'Bistek Tagalog',
          category: 'Pork',
          description:
              'Filipino beef steak marinated in soy sauce and calamansi, then cooked with onions.',
          imageAsset: 'assets/bistek_tagalog.jpeg',
          recipe: 'Ingredients:\n'
              '- 1 lb beef sirloin or flank steak, thinly sliced\n'
              '- 1/4 cup soy sauce\n'
              '- Juice of 3-4 calamansi (or 1-2 lemons if calamansi is unavailable)\n'
              '- 1/4 cup cooking oil\n'
              '- 1 large onion, sliced into rings\n'
              '- 4 cloves garlic, minced\n'
              '- 1 cup beef broth or water\n'
              '- 2 tbsp soy sauce (for cooking)\n'
              '- 1 tbsp sugar\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Marinate the Beef:\n'
              '   - In a bowl, combine the soy sauce and calamansi juice.\n'
              '   - Add the beef slices and mix well to coat.\n'
              '   - Cover and refrigerate for at least 30 minutes, or up to 2 hours for best results.\n\n'
              '2. Cook the Onions:\n'
              '   - Heat the cooking oil in a large pan over medium heat.\n'
              '   - Add the sliced onions and cook until they are soft and slightly caramelized. Remove from the pan and set aside.\n\n'
              '3. Sear the Beef:\n'
              '   - In the same pan, add the minced garlic and cook until fragrant.\n'
              '   - Remove the beef from the marinade, letting excess marinade drip off. Sear the beef slices in the pan until browned on all sides.\n\n'
              '4. Simmer:\n'
              '   - Return the cooked onions to the pan with the beef.\n'
              '   - Add the beef broth or water, soy sauce, and sugar.\n'
              '   - Bring to a boil, then reduce heat and simmer for about 15-20 minutes, or until the beef is tender and the sauce is slightly thickened.\n\n'
              '5. Season and Serve:\n'
              '   - Season with salt and pepper to taste.\n'
              '   - Serve hot with steamed rice.\n'
              '   - Enjoy the savory and tangy flavors of this Filipino beef steak dish.\n',
        ),
        Dish(
          id: '6',
          name: 'Menudo',
          category: 'Pork',
          description:
              'A hearty stew made with pork, liver, and vegetables in a tomato-based sauce.',
          imageAsset: 'assets/menudo.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb pork shoulder or pork belly, diced\n'
              '- 1/2 lb pork liver, diced\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 2-3 medium potatoes, peeled and diced\n'
              '- 1 cup carrots, peeled and diced\n'
              '- 1 red bell pepper, diced\n'
              '- 1 cup green peas\n'
              '- 1 cup tomato sauce\n'
              '- 1 cup beef or chicken broth\n'
              '- 2 tbsp cooking oil\n'
              '- 1 tbsp soy sauce\n'
              '- 1 tbsp fish sauce (patis)\n'
              '- 1 tsp sugar\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Prepare the Pork and Liver:\n'
              '   - Heat the cooking oil in a large pot over medium heat.\n'
              '   - Add the chopped onion and minced garlic, and sauté until softened and aromatic.\n'
              '   - Add the diced pork and cook until browned on all sides.\n'
              '   - Add the diced pork liver and cook for another 5 minutes.\n\n'
              '2. Add Tomato Sauce and Broth:\n'
              '   - Stir in the tomato sauce and beef or chicken broth.\n'
              '   - Add the soy sauce, fish sauce, and sugar.\n'
              '   - Bring to a boil, then reduce heat and simmer for about 20 minutes.\n\n'
              '3. Add Vegetables:\n'
              '   - Add the potatoes, carrots, and red bell pepper to the pot.\n'
              '   - Simmer for another 10-15 minutes, or until the vegetables are tender and the pork is cooked through.\n'
              '   - Stir in the green peas and cook for an additional 5 minutes.\n\n'
              '4. Season and Serve:\n'
              '   - Season with salt and pepper to taste.\n'
              '   - Serve hot with steamed rice.\n'
              '   - Enjoy the savory and comforting flavors of this Filipino stew.\n',
        ),
        Dish(
          id: '7',
          name: 'Pinakbet',
          category: 'Vegetable',
          description:
              'A vegetable dish with squash, string beans, and eggplant, flavored with bagoong.',
          imageAsset: 'assets/pinakbet.jpg',
          recipe: 'Ingredients:\n'
              '- 1 small squash (kalabasa), peeled and diced\n'
              '- 1 cup string beans (sitaw), cut into 2-inch pieces\n'
              '- 1 medium eggplant (talong), sliced\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 2 tomatoes, chopped\n'
              '- 1/4 cup bagoong (fermented shrimp paste)\n'
              '- 1 cup water or vegetable broth\n'
              '- 2 tbsp cooking oil\n'
              '- 1 tbsp soy sauce (optional)\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté the Aromatics:\n'
              '   - Heat the cooking oil in a large pan over medium heat.\n'
              '   - Add the chopped onion and minced garlic, and sauté until softened and fragrant.\n'
              '   - Add the chopped tomatoes and cook until they break down and release their juices.\n\n'
              '2. Add Vegetables:\n'
              '   - Add the diced squash and cook for about 5 minutes, stirring occasionally.\n'
              '   - Stir in the string beans and eggplant.\n'
              '   - Cook for another 5 minutes, allowing the vegetables to start softening.\n\n'
              '3. Season and Simmer:\n'
              '   - Add the bagoong and stir to combine with the vegetables.\n'
              '   - Pour in the water or vegetable broth.\n'
              '   - Bring to a boil, then reduce heat and simmer for about 15-20 minutes, or until the vegetables are tender.\n'
              '   - If desired, add soy sauce for additional seasoning.\n\n'
              '4. Final Seasoning:\n'
              '   - Taste and adjust seasoning with salt and pepper as needed.\n'
              '   - Serve hot with steamed rice.\n'
              '   - Enjoy the savory and umami flavors of this classic Filipino vegetable dish.\n',
        ),
        Dish(
          id: '8',
          name: 'Pork Afritada',
          category: 'Pork',
          description:
              'Pork stew cooked with tomatoes, potatoes, carrots, and bell peppers.',
          imageAsset: 'assets/pork_afritada.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb pork shoulder or pork belly, cut into chunks\n'
              '- 1 large onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 2-3 medium potatoes, peeled and diced\n'
              '- 1 cup carrots, peeled and diced\n'
              '- 1 red bell pepper, diced\n'
              '- 1 green bell pepper, diced\n'
              '- 1 cup tomato sauce\n'
              '- 1 cup beef or chicken broth\n'
              '- 2 tbsp cooking oil\n'
              '- 1 tbsp soy sauce\n'
              '- 1 tsp paprika\n'
              '- 1/2 tsp dried oregano (optional)\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté the Pork:\n'
              '   - Heat the cooking oil in a large pan over medium heat.\n'
              '   - Add the chopped onion and minced garlic, and sauté until softened and fragrant.\n'
              '   - Add the pork chunks and cook until browned on all sides.\n\n'
              '2. Add Vegetables:\n'
              '   - Add the diced potatoes and carrots to the pan.\n'
              '   - Stir and cook for about 5 minutes.\n\n'
              '3. Cook with Tomato Sauce:\n'
              '   - Pour in the tomato sauce and beef or chicken broth.\n'
              '   - Add the soy sauce, paprika, and dried oregano (if using).\n'
              '   - Bring to a boil, then reduce heat to low and simmer for about 30-40 minutes, or until the pork is tender and the vegetables are cooked through.\n\n'
              '4. Add Bell Peppers:\n'
              '   - Stir in the diced bell peppers and cook for an additional 5-10 minutes, until the bell peppers are tender but still vibrant.\n\n'
              '5. Season and Serve:\n'
              '   - Taste and adjust seasoning with salt and pepper as needed.\n'
              '   - Serve hot with steamed rice.\n'
              '   - Enjoy the savory and rich flavors of this Filipino pork stew.\n',
        ),
        Dish(
          id: '9',
          name: 'Laing',
          category: 'Vegetable',
          description:
              'Spicy dish made from dried taro leaves cooked in coconut milk with chili and shrimp paste.',
          imageAsset: 'assets/laing.jpg',
          recipe: 'Ingredients:\n'
              '- 2 cups dried taro leaves (gabi leaves)\n'
              '- 1 can (400 ml) coconut milk\n'
              '- 1/4 cup shrimp paste (bagoong)\n'
              '- 4-5 red chili peppers, chopped (adjust to taste)\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 1 thumb-sized ginger, minced\n'
              '- 2 tbsp cooking oil\n'
              '- 1 cup water or coconut water\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté the Aromatics:\n'
              '   - Heat the cooking oil in a large pan over medium heat.\n'
              '   - Add the chopped onion, garlic, and ginger. Sauté until softened and fragrant.\n\n'
              '2. Add Shrimp Paste and Chili:\n'
              '   - Stir in the shrimp paste and chopped chili peppers.\n'
              '   - Cook for a few minutes until the shrimp paste is well combined with the aromatics.\n\n'
              '3. Cook the Taro Leaves:\n'
              '   - Add the dried taro leaves to the pan and stir to coat with the shrimp paste mixture.\n'
              '   - Pour in the coconut milk and water (or coconut water).\n'
              '   - Bring to a simmer, then reduce heat to low and cover the pan.\n'
              '   - Cook for about 30-40 minutes, or until the taro leaves are tender and the sauce has thickened.\n\n'
              '4. Season and Serve:\n'
              '   - Taste and adjust seasoning with salt and pepper as needed.\n'
              '   - Serve hot with steamed rice.\n'
              '   - Enjoy the rich and spicy flavors of this Filipino dish.\n',
        ),
        Dish(
          id: '10',
          name: 'Sinigang na Isda',
          category: 'Fish',
          description:
              'A sour fish soup with vegetables, flavored with tamarind.',
          imageAsset: 'assets/sinigang_na_isda.jpeg',
          recipe: 'Ingredients:\n'
              '- 1 lb fish (such as bangus, tilapia, or any firm white fish), cleaned and cut into pieces\n'
              '- 1 large onion, chopped\n'
              '- 2-3 medium tomatoes, chopped\n'
              '- 1 radish (labanos), peeled and sliced\n'
              '- 1 cup string beans (sitaw), cut into 2-inch pieces\n'
              '- 1 cup kangkong (water spinach) or other leafy greens\n'
              '- 1-2 green chili peppers (optional)\n'
              '- 1 packet tamarind soup base (sinigang mix) or 1/4 cup tamarind paste\n'
              '- 1 tbsp fish sauce (patis)\n'
              '- 1 tbsp cooking oil\n'
              '- 4 cups water\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Prepare the Soup Base:\n'
              '   - Heat the cooking oil in a large pot over medium heat.\n'
              '   - Add the chopped onion and tomatoes. Sauté until softened and the tomatoes start to break down.\n\n'
              '2. Add Water and Tamarind Flavoring:\n'
              '   - Pour in the water and bring to a boil.\n'
              '   - Stir in the tamarind soup base or tamarind paste.\n'
              '   - Add the radish and simmer for about 5 minutes.\n\n'
              '3. Cook the Fish and Vegetables:\n'
              '   - Add the fish pieces to the pot and cook until the fish is cooked through, about 10-15 minutes.\n'
              '   - Stir in the string beans and cook for an additional 5 minutes.\n'
              '   - Add the kangkong (or other leafy greens) and green chili peppers, if using.\n'
              '   - Simmer for another 2-3 minutes, until the greens are tender.\n\n'
              '4. Season and Serve:\n'
              '   - Season with fish sauce, salt, and pepper to taste.\n'
              '   - Serve hot and enjoy the tangy, savory flavors of this Filipino fish soup.\n',
        ),
        Dish(
          id: '11',
          name: 'Bicol Express',
          category: 'Pork',
          description: 'Spicy pork stew with coconut milk and chili peppers.',
          imageAsset: 'assets/bicol.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb pork belly or shoulder, sliced into thin strips\n'
              '- 1 can (400 ml) coconut milk\n'
              '- 5-6 red chili peppers, sliced (adjust to taste)\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 2 tbsp shrimp paste (bagoong)\n'
              '- 2 tbsp cooking oil\n'
              '- 1 cup water\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté the Pork:\n'
              ' - Heat the cooking oil in a large pan over medium heat.\n'
              ' - Add the chopped onion and minced garlic. Sauté until softened.\n'
              ' - Add the pork slices and cook until browned on all sides.\n\n'
              '2. Add Shrimp Paste and Chili:\n'
              ' - Stir in the shrimp paste and sliced chili peppers.\n'
              ' - Cook for a few minutes until the flavors meld.\n\n'
              '3. Simmer:\n'
              ' - Pour in the coconut milk and water.\n'
              ' - Bring to a boil, then reduce heat and simmer for about 30 minutes, or until the pork is tender and the sauce has thickened.\n\n'
              '4. Season and Serve:\n'
              ' - Season with salt and pepper to taste.\n'
              ' - Serve hot with steamed rice.\n'
              ' - Enjoy the rich and spicy flavors of this Filipino favorite.\n',
        ),
        Dish(
          id: '12',
          name: 'Pork Binagoongan',
          category: 'Pork',
          description:
              'Pork cooked in a savory and slightly spicy shrimp paste sauce.',
          imageAsset: 'assets/PorkBinagoongan.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb pork belly, diced\n'
              '- 1/4 cup shrimp paste (bagoong)\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 2 tomatoes, chopped\n'
              '- 1-2 green chili peppers, sliced (optional)\n'
              '- 1 cup coconut milk\n'
              '- 2 tbsp cooking oil\n'
              '- 1 tbsp soy sauce\n'
              '- 1 tbsp vinegar\n'
              '- 1 tsp sugar\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté the Pork:\n'
              '   - Heat oil in a pan over medium heat.\n'
              '   - Add the chopped onion and minced garlic, and sauté until softened.\n'
              '   - Add the diced pork and cook until browned.\n\n'
              '2. Add Tomatoes and Shrimp Paste:\n'
              '   - Stir in the chopped tomatoes and cook until they start to break down.\n'
              '   - Add the shrimp paste and cook for a few more minutes.\n\n'
              '3. Simmer:\n'
              '   - Add the coconut milk, soy sauce, vinegar, and sugar.\n'
              '   - Bring to a boil, then reduce heat and simmer until the pork is tender and the sauce has thickened.\n'
              '   - Add green chili peppers if using.\n\n'
              '4. Season and Serve:\n'
              '   - Season with salt and pepper to taste.\n'
              '   - Serve hot with steamed rice.\n'
              '   - Enjoy the rich and savory flavors of this Filipino dish.\n',
        ),
        Dish(
          id: '13',
          name: 'Chicken Tinola',
          category: 'Chicken',
          description:
              'A comforting chicken soup with ginger, green papaya, and leafy greens.',
          imageAsset: 'assets/chicken_tinola.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb chicken (cut into pieces)\n'
              '- 1 green papaya, peeled and sliced\n'
              '- 1 cup spinach or malunggay leaves\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 1 thumb-sized ginger, sliced\n'
              '- 4 cups chicken broth or water\n'
              '- 2 tbsp fish sauce (patis)\n'
              '- 2 tbsp cooking oil\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté the Aromatics:\n'
              '   - Heat oil in a large pot over medium heat.\n'
              '   - Add the chopped onion, garlic, and ginger. Sauté until softened and fragrant.\n\n'
              '2. Cook the Chicken:\n'
              '   - Add the chicken pieces and cook until lightly browned.\n'
              '   - Pour in the chicken broth or water. Bring to a boil.\n'
              '   - Reduce heat and simmer until the chicken is cooked through, about 20-25 minutes.\n\n'
              '3. Add Vegetables:\n'
              '   - Add the sliced green papaya and cook until tender, about 10-15 minutes.\n'
              '   - Stir in the spinach or malunggay leaves and cook for another 2 minutes.\n\n'
              '4. Season and Serve:\n'
              '   - Season with fish sauce, salt, and pepper to taste.\n'
              '   - Serve hot and enjoy the comforting flavors of this Filipino soup.\n',
        ),
        Dish(
          id: '14',
          name: 'Chicken Inasal',
          category: 'Chicken',
          description:
              'Grilled chicken marinated in a flavorful mix of vinegar, soy sauce, and spices.',
          imageAsset: 'assets/chicken_inasal.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb chicken thighs or drumsticks\n'
              '- 1/4 cup vinegar\n'
              '- 1/4 cup soy sauce\n'
              '- 1 tbsp annatto oil (for color)\n'
              '- 1 tbsp brown sugar\n'
              '- 4 cloves garlic, minced\n'
              '- 1 thumb-sized ginger, minced\n'
              '- 1 onion, chopped\n'
              '- 1 tsp black pepper\n'
              '- Salt to taste\n\n'
              'Instructions:\n\n'
              '1. Marinate the Chicken:\n'
              '   - In a bowl, combine vinegar, soy sauce, annatto oil, brown sugar, minced garlic, ginger, chopped onion, black pepper, and salt.\n'
              '   - Add the chicken pieces and mix well to coat.\n'
              '   - Cover and refrigerate for at least 2 hours or overnight for best results.\n\n'
              '2. Grill the Chicken:\n'
              '   - Preheat the grill to medium heat.\n'
              '   - Grill the marinated chicken pieces, turning occasionally, until cooked through and slightly charred, about 20-25 minutes.\n\n'
              '3. Serve:\n'
              '   - Serve hot with steamed rice and your favorite dipping sauce.\n'
              '   - Enjoy the smoky and flavorful taste of this Filipino grilled chicken.\n',
        ),
        Dish(
          id: '15',
          name: 'Relyenong Bangus',
          category: 'Fish',
          description:
              'Stuffed bangus (milkfish) with a savory mixture of vegetables and spices, then fried until crispy.',
          imageAsset: 'assets/relyenong_bangus.jpg',
          recipe: 'Ingredients:\n'
              '- 1 whole bangus (milkfish), cleaned and deboned\n'
              '- 1/2 cup carrots, finely chopped\n'
              '- 1/2 cup green beans, finely chopped\n'
              '- 1/2 cup onions, chopped\n'
              '- 1/4 cup raisins (optional)\n'
              '- 2 eggs, beaten\n'
              '- 1/2 cup breadcrumbs\n'
              '- 2 tbsp cooking oil\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Prepare the Filling:\n'
              ' - In a pan, heat a little cooking oil over medium heat.\n'
              ' - Sauté the onions until softened, then add the carrots and green beans. Cook until tender.\n'
              ' - Stir in the raisins if using.\n'
              ' - Season with salt and pepper to taste. Let the mixture cool.\n\n'
              '2. Stuff the Fish:\n'
              ' - Stuff the prepared mixture into the cavity of the bangus.\n'
              ' - Secure the opening with toothpicks or kitchen twine.\n\n'
              '3. Fry the Fish:\n'
              ' - Dip the stuffed fish in beaten eggs, then coat with breadcrumbs.\n'
              ' - Heat cooking oil in a pan over medium heat.\n'
              ' - Fry the fish until golden brown and crispy, about 5-7 minutes per side.\n\n'
              '4. Serve:\n'
              ' - Remove the fish from the pan and drain on paper towels.\n'
              ' - Serve hot with a side of fresh vegetables or a dipping sauce.\n'
              ' - Enjoy this Filipino stuffed fish dish.\n',
        ),
        Dish(
          id: '16',
          name: 'Sinaing na Isda',
          category: 'Fish',
          description:
              'Fish cooked slowly in a savory broth with tomatoes and other aromatics, traditionally done in a clay pot.',
          imageAsset: 'assets/sinaing_na_isda.jpg',
          recipe: 'Ingredients:\n'
              '- 1 lb fish (such as bangus or tilapia), cleaned and gutted\n'
              '- 2 large tomatoes, chopped\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 1 cup water\n'
              '- 2 tbsp fish sauce (patis)\n'
              '- 1 tsp ground black pepper\n'
              '- 2 tbsp cooking oil\n'
              '- 2 bay leaves\n'
              '- Salt to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté Aromatics:\n'
              ' - Heat cooking oil in a pot or clay pot over medium heat.\n'
              ' - Add the chopped onion, garlic, and tomatoes. Sauté until softened.\n\n'
              '2. Cook the Fish:\n'
              ' - Add the fish to the pot and gently mix with the sautéed aromatics.\n'
              ' - Pour in the water and fish sauce.\n'
              ' - Add bay leaves and black pepper.\n'
              ' - Bring to a boil, then reduce heat and simmer for about 20-30 minutes, or until the fish is cooked and the flavors are melded.\n\n'
              '3. Serve:\n'
              ' - Season with salt to taste.\n'
              ' - Serve hot with steamed rice.\n'
              ' - Enjoy the comforting and savory flavors of this traditional Filipino dish.\n',
        ),
        Dish(
          id: '17',
          name: 'Tilapia in Tomato Sauce',
          category: 'Fish',
          description:
              'A simple and flavorful fish dish with tilapia cooked in a tangy tomato sauce.',
          imageAsset: 'assets/tilapia_in_tomato_sauce.jpg',
          recipe: 'Ingredients:\n'
              '- 4 pieces tilapia fillets\n'
              '- 1 can (400 g) diced tomatoes\n'
              '- 1 onion, chopped\n'
              '- 4 cloves garlic, minced\n'
              '- 1 bell pepper, sliced\n'
              '- 1/4 cup tomato paste\n'
              '- 1/2 cup water\n'
              '- 2 tbsp cooking oil\n'
              '- 1 tsp dried basil\n'
              '- 1 tsp dried oregano\n'
              '- 1 tsp paprika\n'
              '- Salt and pepper to taste\n\n'
              'Instructions:\n\n'
              '1. Sauté Aromatics:\n'
              ' - Heat cooking oil in a large pan over medium heat.\n'
              ' - Add the chopped onion and minced garlic. Sauté until softened.\n\n'
              '2. Prepare the Sauce:\n'
              ' - Stir in the tomato paste and cook for a minute.\n'
              ' - Add the diced tomatoes and water. Bring to a simmer.\n'
              ' - Season with basil, oregano, paprika, salt, and pepper.\n\n'
              '3. Cook the Tilapia:\n'
              ' - Add the tilapia fillets to the pan and spoon some of the sauce over them.\n'
              ' - Cover and cook for about 10-15 minutes, or until the tilapia is cooked through and flakes easily with a fork.\n\n'
              '4. Serve:\n'
              ' - Garnish with fresh herbs if desired.\n'
              ' - Serve hot with steamed rice or crusty bread.\n'
              ' - Enjoy the savory and tangy flavors of this fish dish.\n',
        )
      ];
}
