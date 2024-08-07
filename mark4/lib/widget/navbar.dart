import 'package:flutter/material.dart';
import 'package:mark4/account/profile.dart';
import 'package:mark4/one/home.dart';
import 'package:mark4/one/login.dart';

import 'package:mark4/one/singup.dart';
import 'package:mark4/widget/custombar.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePage(),
    Login(),
    SignUpScreen(),
    ProfilePage(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.map,
    Icons.shopping_cart,
    Icons.account_circle,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Container(
                padding: const EdgeInsets.only(bottom: 12.0),
                color: Colors.white,
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
      ),
    );
  }
}
