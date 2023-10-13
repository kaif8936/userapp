import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/cart/widgets/cart_item_actions.dart';
import 'package:userapp/src/screens/cart/widgets/delete_dialogue.dart';

class CartItem extends StatelessWidget {
  final Dish cartItem;
  final int quantity;
  final Function(int) updateQuantity;

  const CartItem({
    Key? key,
    required this.cartItem,
    required this.quantity,
    required this.updateQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 0.w),
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x330D5EF9),
            spreadRadius: -4,
            blurRadius: 20,
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          height: 58.h,
          width: 58.w,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(8.0),
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
            Text(
              'Price: \$${(cartItem.price * quantity).toStringAsFixed(2)}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: const Color(0xff0D5EF9)),
            ),
          ],
        ),
        trailing: CartItemActions(
          quantity: quantity,
          onIncrement: () => updateQuantity(quantity + 1),
          onDecrement: () {
            if (quantity > 1) {
              updateQuantity(quantity - 1);
            } else {
              cartItem.isItemAdded = !cartItem.isItemAdded;
              showDeleteConfirmationDialog(context, cartItem.title, () {
                updateQuantity(0);
              });
            }
          },
        ),
      ),
    );
  }
}
