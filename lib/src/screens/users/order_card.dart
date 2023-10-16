import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color statusColor = Colors.green; 
    String statusText = 'Process'; 

    switch (order.orderStatus) {
      case OrderStatus.process:
        statusColor = Colors.green;
        statusText = 'Process';
        break;
      case OrderStatus.completed:
        statusColor = Colors.blue;
        statusText = 'Delivered';
        break;
      case OrderStatus.cancelled:
        statusColor = Colors.red;
        statusText = 'Cancelled';
        break;
    }
    final formattedDate =
        DateFormat("dd MMM y 'at' hh:mma").format(order.orderDate);

    Map<String, int> dishQuantities = {};
    Map<String, Dish> dishesInfo = {};

    for (final dish in order.dishes) {
      final dishTitle = dish.title;
      if (dishQuantities.containsKey(dishTitle)) {
        dishQuantities[dishTitle] = dishQuantities[dishTitle]! + 1;
      } else {
        dishQuantities[dishTitle] = 1;
        dishesInfo[dishTitle] = dish;
      }
    }

    double calculateTotalPrice() {
      double total = 0.0;
      for (final dish in order.dishes) {
        total += dish.price;
      }
      return total;
    }

    final totalOrderPrice = calculateTotalPrice();

    return Container(
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
      margin: EdgeInsets.all(16.sp),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formattedDate,
                  style: TextStyle(color: Colors.black, fontSize: 12.sp),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.sp),
                    color: statusColor,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
                    child: Text(
                      statusText,
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          for (final dishTitle in dishQuantities.keys)
            ListTile(
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
                        dishesInfo[dishTitle]!.imageUrl,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              title: Text(
                '$dishTitle x${dishQuantities[dishTitle]}',
              ),
              subtitle: Text(
                'Price: \$${(dishesInfo[dishTitle]!.price * dishQuantities[dishTitle]!).toStringAsFixed(2)}',
              ),
            ),
          SizedBox(
            height: 3.h,
          ),
          Divider(
            color: Colors.grey,
            height: 1.0,
            thickness: 0.5,
            indent: 16.sp,
            endIndent: 16.sp,
          ),
          ListTile(
            title: Text(
              'Total Price: \$${totalOrderPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: const Color(0xff0D5EF9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
