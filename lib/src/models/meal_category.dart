class Dish {
  final String title;
  final String subTitle;
  final double price;
  final String imageUrl;
  final String id;
  bool isFavorite;
  bool isPopular;

  Dish({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

class MealCategory {
  final String title;
  final String imageUrl;
  final List<Dish> dishes;

  MealCategory({
    required this.title,
    required this.imageUrl,
    required this.dishes,
  });
}

final italianCategory = MealCategory(
  title: 'Italian',
  imageUrl:
      'https://images.pexels.com/photos/35661/pasta-cheese-egg-food.jpg?auto=compress&cs=tinysrgb&w=600',
  dishes: [
    Dish(
      title: 'Spaghetti Carbonara',
      subTitle: 'Classic Italian pasta',
      price: 12.99,
      imageUrl:
          'https://images.pexels.com/photos/4518844/pexels-photo-4518844.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '1',
    ),
    Dish(
      title: 'Margherita Pizza',
      subTitle: 'Fresh tomatoes and mozzarella',
      price: 10.99,
      imageUrl:
          'https://images.pexels.com/photos/18431672/pexels-photo-18431672/free-photo-of-sourdough-pizza-time.jpeg?auto=compress&cs=tinysrgb&w=600',
      isPopular: true,
      id: '2',
    ),
  ],
);

final mexicanCategory = MealCategory(
  title: 'Mexican',
  imageUrl:
      'https://images.pexels.com/photos/2087748/pexels-photo-2087748.jpeg?auto=compress&cs=tinysrgb&w=600',
  dishes: [
    Dish(
      title: 'Tacos',
      subTitle: 'Authentic Mexican street food',
      price: 9.99,
      imageUrl:
          'https://images.pexels.com/photos/3642718/pexels-photo-3642718.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '3',
    ),
    Dish(
      title: 'Guacamole',
      subTitle: 'Creamy avocado dip',
      price: 5.99,
      imageUrl:
          'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '4',
    ),
    // Add more Mexican dishes here
  ],
);

final indianCategory = MealCategory(
  title: 'Indian',
  imageUrl:
      'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=600',
  dishes: [
    Dish(
      title: 'Chicken Tikka Masala',
      subTitle: 'Creamy tomato curry',
      price: 14.99,
      imageUrl:
          'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=600',
      isPopular: true,
      id: '5',
    ),
    Dish(
      title: 'Vegetable Biryani',
      subTitle: 'Spiced rice dish with vegetables',
      price: 11.99,
      imageUrl:
          'https://images.pexels.com/photos/7593230/pexels-photo-7593230.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '6',
    ),
    // Add more Indian dishes here
  ],
);

final dessertCategory = MealCategory(
  title: 'Desserts',
  imageUrl:
      'https://images.pexels.com/photos/2638026/pexels-photo-2638026.jpeg?auto=compress&cs=tinysrgb&w=600',
  dishes: [
    Dish(
      title: 'Chocolate Cake',
      subTitle: 'Rich and indulgent dessert',
      price: 7.99,
      imageUrl:
          'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '7',
    ),
    Dish(
      title: 'Cheesecake',
      subTitle: 'Creamy and delicious',
      price: 8.99,
      imageUrl:
          'https://images.pexels.com/photos/3185509/pexels-photo-3185509.png?auto=compress&cs=tinysrgb&w=600',
      id: '8',
    ),
    // Add more dessert dishes here
  ],
);

final vegetarianCategory = MealCategory(
  title: 'Vegetarian',
  imageUrl:
      'https://images.pexels.com/photos/16803393/pexels-photo-16803393/free-photo-of-pizzas-on-the-table-at-the-restaurant.jpeg?auto=compress&cs=tinysrgb&w=600',
  dishes: [
    Dish(
      title: 'Vegetable Curry',
      subTitle: 'Spicy and flavorful',
      price: 10.99,
      imageUrl:
          'https://images.pexels.com/photos/15913452/pexels-photo-15913452/free-photo-of-poke-bowl-with-salmon.jpeg?auto=compress&cs=tinysrgb&w=600',
      isPopular: true,
      id: '9',
    ),
    Dish(
      title: 'Caprese Salad',
      subTitle: 'Fresh tomatoes and mozzarella',
      price: 9.99,
      imageUrl:
          'https://images.pexels.com/photos/13241857/pexels-photo-13241857.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '10',
    ),
    // Add more vegetarian dishes here
  ],
);

final meatsCategory = MealCategory(
  title: 'Meats',
  imageUrl:
      'https://images.pexels.com/photos/1927383/pexels-photo-1927383.jpeg?auto=compress&cs=tinysrgb&w=600',
  dishes: [
    Dish(
      title: 'Steak',
      subTitle: 'Juicy and tender',
      price: 16.99,
      imageUrl:
          'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '11',
    ),
    Dish(
      title: 'BBQ Ribs',
      subTitle: 'Smoky and savory',
      price: 13.99,
      imageUrl:
          'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=600',
      id: '12',
    ),
    // Add more meat dishes here
  ],
);
