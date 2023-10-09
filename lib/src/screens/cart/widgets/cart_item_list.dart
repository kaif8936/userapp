import 'package:flutter/material.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/cart/widgets/cart_item.dart';

class CartItemList extends StatelessWidget {
  final Map<String, int> cartItems;
  final List<MealCategory> availableDishes;
  final Function(String, int) updateQuantity;

  const CartItemList({
    Key? key,
    required this.cartItems,
    required this.availableDishes,
    required this.updateQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: cartItems.entries.map((entry) {
          final dishId = entry.key;
          final quantity = entry.value;

          final category = availableDishes.firstWhere(
            (category) =>
                category.dishes.any((dish) => dish.id == dishId),
            orElse: () => MealCategory(
              title: '',
              imageUrl: '',
              dishes: [],
            ),
          );
          final cartItem = category.dishes
              .firstWhere((dish) => dish.id == dishId);

          return CartItem(
            cartItem: cartItem,
            quantity: quantity,
            updateQuantity: (newQuantity) {
              updateQuantity(dishId, newQuantity);
            },
          );
        }).toList(),
      ),
    );
  }
}
