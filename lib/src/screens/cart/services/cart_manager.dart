import 'package:userapp/src/models/meal_category.dart';

class CartManager {
  // Store the items in the cart with their quantity using the 'id' as the key
  static Map<String, int> cartItems = {};

  // Calculate the total price of items in the cart
  static double calculateTotalPrice(List<MealCategory> availableDishes) {
    double total = 0.0;
    cartItems.forEach((dishId, quantity) {
      final category = availableDishes.firstWhere(
        (category) => category.dishes.any((dish) => dish.id == dishId),
        orElse: () => MealCategory(title: '', imageUrl: '', dishes: []),
      );
      final dish = category.dishes.firstWhere((dish) => dish.id == dishId);
      total += dish.price * quantity;
    });
    return total;
  }

  // Add an item to the cart (up to a maximum of 2)
  static void addToCart(String dishId) {
    final quantity = cartItems[dishId] ?? 0;
    if (quantity < 2) {
      cartItems[dishId] = quantity + 1;
    }
  }

  // Remove an item from the cart
  static void removeFromCart(String dishId) {
    final quantity = cartItems[dishId] ?? 0;
    if (quantity > 0) {
      cartItems[dishId] = quantity - 1;
    }
  }

  // Get the map of items and their quantities in the cart
  static Map<String, int> getCartItems() {
    return cartItems;
  }
}
