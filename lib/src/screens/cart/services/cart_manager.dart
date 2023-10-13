import 'package:userapp/src/models/meal_category.dart';

class CartManager {
  static Map<String, int> cartItems = {};

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

  static void addToCart(String dishId) {
    final quantity = cartItems[dishId] ?? 0;
    if (quantity < 2) {
      cartItems[dishId] = quantity + 1;
    }
  }

  static void removeFromCart(String dishId) {
    final quantity = cartItems[dishId] ?? 0;
    if (quantity > 0) {
      cartItems[dishId] = quantity - 1;
    }
  }

  static Map<String, int> getCartItems() {
    return cartItems;
  }
}
