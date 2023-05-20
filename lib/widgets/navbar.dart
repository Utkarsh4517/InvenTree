import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inventree/constants/colors.dart';
import 'package:inventree/screens/cart.dart';
import 'package:inventree/screens/homepage.dart';
import 'package:inventree/screens/profile.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: _pages[_selectedIndex],

      /// BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30)
            .copyWith(bottom: screenHeight * 0.03),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            backgroundColor: jasmine,
            selectedItemColor: spaceCadet,
            unselectedItemColor: Colors.white,
            elevation: 10,
            selectedFontSize: 12,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            iconSize: screenHeight * 0.022,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.house), label: ' Home'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.cartPlus), label: ' Cart'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.person), label: ' Account'),
            ],
          ),
        ),
      ),
    );
  }
}
