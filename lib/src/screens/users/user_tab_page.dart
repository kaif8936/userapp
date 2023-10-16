import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:userapp/src/utils/routes.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'), // Replace with your image asset
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff0D5EF9),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bxs_user_account,
                color: Color(0xff0D5EF9),
              ),
              title: const Text(
                'My Profile',
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bx_heart,
                color: Color(0xff0D5EF9),
              ),
              title: const Text('My Favourites'),
              onTap: () {
                context.push(Routes.favorites);
              },
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bx_cart_alt,
                color: Color(0xff0D5EF9),
              ),
              title: const Text('My Orders'),
              onTap: () {
                context.push(Routes.orderStatusPage);
              },
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bx_location_plus,
                color: Color(0xff0D5EF9),
              ),
              title: const Text('Delivery Address'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bx_credit_card,
                color: Color(0xff0D5EF9),
              ),
              title: const Text('Payment Methods'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bx_mail_send,
                color: Color(0xff0D5EF9),
              ),
              title: const Text('Contact Us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BoxIcons.bx_log_out,
                color: Color(0xff0D5EF9),
              ),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
