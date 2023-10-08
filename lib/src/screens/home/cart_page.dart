import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/home/cart_manager.dart';
import 'package:userapp/src/widgets/button.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Local state to manage quantities
  Map<Dish, int> cartItems = {};
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    // Initialize local state with data from CartManager
    cartItems = CartManager.getCartItems();
    totalPrice = CartManager.calculateTotalPrice();
  }

  // Function to update the quantity for a specific item
  void updateQuantity(Dish item, int newQuantity) {
    if (newQuantity <= 0) {
      // Remove the item from the cart if the new quantity is zero or less
      CartManager.removeFromCart(item);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Item removed from cart.'),
          duration: Duration(seconds: 2),
        ),
      );
      setState(() {
        cartItems.remove(item);
      });
    } else {
      setState(() {
        cartItems[item] = newQuantity;
        totalPrice = CartManager.calculateTotalPrice();
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 22.h,
          ),
          cartItems.isEmpty
              ? const Center(
                  child: Text('Your cart is empty.'),
                )
              : Expanded(
                  child: ListView(
                    children: cartItems.entries.map((entry) {
                      final cartItem = entry.key;
                      final quantity = entry.value;

                      return Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 0.w),
                        margin: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 16.w), // Add spacing
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(12.0), // Add border radius
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x330D5EF9), // Shadow color
                              spreadRadius: -4, // Spread radius
                              blurRadius: 20, // Blur radius
                              offset: Offset(0, 7), // Offset
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Container(
                            height: 58.h,
                            width: 58.w,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(
                                  8.0), // Adjust the border radius as needed
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                    cartItem.imageUrl,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          title: Text(
                            cartItem.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('Price: \$${cartItem.price.toStringAsFixed(2)}'),
                              // Text('$quantity'),
                              Text(
                                'Price: \$${(cartItem.price * quantity).toStringAsFixed(2)}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: const Color(0xff0D5EF9)),
                              ),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(quantity == 1
                                    ? Icons.delete
                                    : Icons.remove),
                                onPressed: () {
                                  if (quantity > 1) {
                                    updateQuantity(cartItem, quantity - 1);
                                  } else {
                                    updateQuantity(cartItem, 0);
                                  }
                                },
                              ),
                              Text(
                                '$quantity',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: const Color(0xff0D5EF9),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  updateQuantity(cartItem, quantity + 1);
                                  // ScaffoldMessenger.of(context).showSnackBar(
                                  //   const SnackBar(
                                  //     content: Text('Item added to cart.'),
                                  //     duration: Duration(seconds: 2),
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
          cartItems.isEmpty
              ? const SizedBox()
              : Padding(
                  padding: EdgeInsets.all(16.sp),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.sp),
                          color: Colors.grey[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Basket Total',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '\$${totalPrice.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Button(
                        onTap: () {},
                        text: 'PLACE MY ORDER',
                        buttonType: ButtonType.small,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
