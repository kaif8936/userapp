import 'package:userapp/src/models/meal_category.dart';

class CartManager {
  // Store the items in the cart with their quantity
  static Map<Dish, int> cartItems = {};

  // Calculate the total price of items in the cart
  static double calculateTotalPrice() {
    double total = 0.0;
    cartItems.forEach((dish, quantity) {
      total += dish.price * quantity;
    });
    return total;
  }

  // Add an item to the cart (up to a maximum of 2)
  static void addToCart(Dish item) {
    final quantity = cartItems[item] ?? 0;
    cartItems[item] = quantity + 1;
  }

  // Remove an item from the cart
  static void removeFromCart(Dish item) {
    final quantity = cartItems[item] ?? 0;
    if (quantity > 0) {
      cartItems[item] = quantity - 1;
    }
  }

  // Get the map of items and their quantities in the cart
  static Map<Dish, int> getCartItems() {
    return cartItems;
  }
}
