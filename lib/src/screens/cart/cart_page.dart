import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/cart/widgets/cart_item_list.dart';
import 'package:userapp/src/screens/cart/services/cart_manager.dart';
import 'package:userapp/src/screens/cart/widgets/cart_total_section.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Local state to manage quantities
  Map<String, int> cartItems = {};
  double totalPrice = 0.0;
  List<MealCategory> availableDishes = [
    italianCategory,
    mexicanCategory,
    indianCategory,
    dessertCategory,
    vegetarianCategory,
    meatsCategory,
  ];

  @override
  void initState() {
    super.initState();
    cartItems = CartManager.getCartItems();
    totalPrice = CartManager.calculateTotalPrice(availableDishes);
  }

  void updateQuantity(String dishId, int newQuantity) {
    if (newQuantity <= 0) {
      CartManager.removeFromCart(dishId);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Item removed from cart.'),
          duration: Duration(seconds: 2),
        ),
      );
      setState(() {
        cartItems.remove(dishId);
      });
    } else {
      setState(() {
        cartItems[dishId] = newQuantity;
        totalPrice = CartManager.calculateTotalPrice(availableDishes);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 22.h,
          ),
          cartItems.isEmpty
              ? const Center(
                  child: Text('Your cart is empty.'),
                )
              : CartItemList(
                  cartItems: cartItems,
                  availableDishes: availableDishes,
                  updateQuantity: updateQuantity,
                ),
          cartItems.isEmpty
              ? const SizedBox()
              : CartTotalSection(
                  totalPrice: totalPrice,
                ),
        ],
      ),
    );
  }
}
