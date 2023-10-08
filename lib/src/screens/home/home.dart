import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:userapp/src/screens/home/cart_page.dart';
import 'package:userapp/src/screens/home/chats_page.dart';
import 'package:userapp/src/screens/home/home_page.dart';
import 'package:userapp/src/screens/home/user_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Index of the selected tab

  // Define the screens for each tab here
  final List<Widget> _screens = [
    const HomePage(),
    const CartPage(),
    const UserPage(),
    const ChatsPage(),
  ];

  // Function to handle tab selection
  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: _screens[_selectedIndex]), // Display the selected screen
      bottomNavigationBar: FlashyTabBar(
        iconSize: 30,
        showElevation: false,
        selectedIndex: _selectedIndex, // Current selected tab index
        onItemSelected: _onTabSelected, // Function to handle tab selection
        items: [
          FlashyTabBarItem(
            icon: const Icon(BoxIcons.bx_home),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(BoxIcons.bx_cart),
            title: const Text('Cart'),
          ),
          FlashyTabBarItem(
            icon: const Icon(BoxIcons.bx_user),
            title: const Text('User'),
          ),
          FlashyTabBarItem(
            icon: const Icon(BoxIcons.bx_chat),
            title: const Text('Chats'),
          ),
        ],
      ),
    );
  }
}
