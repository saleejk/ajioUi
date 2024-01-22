import 'package:ajio/screens/account.dart';
import 'package:ajio/screens/bag.dart';
import 'package:ajio/screens/home.dart';
import 'package:ajio/screens/store.dart';
import 'package:ajio/screens/wishlist.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final _screens = [
    const ScreenHome(),
    const ScreenStore(),
    const ScreenAccount(),
    const ScreenWishlist(),
    const ScreenBag()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront_sharp), label: 'Store'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Bag'),
        ],
      ),
    );
  }
}
