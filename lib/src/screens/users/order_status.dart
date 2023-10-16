import 'package:flutter/material.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/users/order_card.dart';

class OrderStatusPage extends StatelessWidget {
  const OrderStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Status'),
      ),
      body: ListView.builder(
        itemCount: dummyOrders.length,
        itemBuilder: (context, index) {
          final order = dummyOrders[index];
          return OrderCard(order: order);
        },
      ),
    );
  }
}
