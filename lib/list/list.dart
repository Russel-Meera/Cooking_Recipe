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

  static List<Dish> get dishes => [
        Dish(
          id: '1',
          name: 'Adobo',
          category: 'Main Course',
          description:
              'A popular Filipino dish made with chicken or pork simmered in soy sauce, vinegar, garlic, and spices.',
          imageAsset: 'assets/adobo.jpg',
          recipe:
              '1. Marinate meat in soy sauce and garlic...\n2. Simmer with vinegar and spices...',
        ),
        Dish(
          id: '2',
          name: 'Sinigang na Baboy',
          category: 'Soup',
          description: 'A sour tamarind-based soup with pork and vegetables.',
          imageAsset: 'assets/sinigang_na_baboy.jpg',
          recipe:
              '1. Boil tamarind and vegetables...\n2. Add pork and simmer until tender...',
        ),
        Dish(
          id: '3',
          name: 'Lechon Kawali',
          category: 'Main Course',
          description:
              'Crispy deep-fried pork belly served with a side of liver sauce.',
          imageAsset: 'assets/lechon_kawali.jpg',
          recipe:
              '1. Boil pork belly until tender...\n2. Deep-fry until crispy...',
        ),
        Dish(
          id: '4',
          name: 'Kare-Kare',
          category: 'Main Course',
          description:
              'A peanut-based stew with oxtail, tripe, and vegetables, often served with bagoong (fermented shrimp paste).',
          imageAsset: 'assets/kare_kare.jpg',
          recipe:
              '1. Cook oxtail and tripe until tender...\n2. Simmer with peanut sauce and vegetables...',
        ),
        Dish(
          id: '5',
          name: 'Bistek Tagalog',
          category: 'Main Course',
          description:
              'Filipino beef steak marinated in soy sauce and calamansi, then cooked with onions.',
          imageAsset: 'assets/bistek_tagalog.jpeg',
          recipe:
              '1. Marinate beef in soy sauce and calamansi...\n2. Cook with onions and soy sauce...',
        ),
        Dish(
          id: '6',
          name: 'Menudo',
          category: 'Main Course',
          description:
              'A hearty stew made with pork, liver, and vegetables in a tomato-based sauce.',
          imageAsset: 'assets/menudo.jpg',
          recipe:
              '1. Sauté pork and liver...\n2. Add vegetables and tomato sauce, and simmer...',
        ),
        Dish(
          id: '7',
          name: 'Pinakbet',
          category: 'Main Course',
          description:
              'A vegetable dish with squash, string beans, and eggplant, flavored with bagoong.',
          imageAsset: 'assets/pinakbet.jpg',
          recipe:
              '1. Sauté vegetables...\n2. Add bagoong and simmer until vegetables are cooked...',
        ),
        Dish(
          id: '8',
          name: 'Pork Afritada',
          category: 'Main Course',
          description:
              'Pork stew cooked with tomatoes, potatoes, carrots, and bell peppers.',
          imageAsset: 'assets/pork_afritada.jpg',
          recipe:
              '1. Sauté pork and vegetables...\n2. Cook with tomato sauce and spices...',
        ),
        Dish(
          id: '9',
          name: 'Laing',
          category: 'Main Course',
          description:
              'Spicy dish made from dried taro leaves cooked in coconut milk with chili and shrimp paste.',
          imageAsset: 'assets/laing.jpg',
          recipe:
              '1. Cook dried taro leaves in coconut milk...\n2. Add chili and shrimp paste...',
        ),
        Dish(
          id: '10',
          name: 'Sinigang na Isda',
          category: 'Soup',
          description:
              'A sour fish soup with vegetables, flavored with tamarind.',
          imageAsset: 'assets/sinigang_na_isda.jpeg',
          recipe:
              '1. Boil tamarind and vegetables...\n2. Add fish and simmer until cooked...',
        ),
      ];
}
