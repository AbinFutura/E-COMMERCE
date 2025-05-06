import 'package:e_commerce_project/utils/constants/colors.dart';
import 'package:e_commerce_project/views/cart/cart_page.dart';
import 'package:e_commerce_project/views/home/home_page.dart';
import 'package:e_commerce_project/views/profile/profile_page.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _HomePageState();
}

class _HomePageState extends State<Bottomnav> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: selectedIndex == 0,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop && selectedIndex != 0) {
            setState(() {
              selectedIndex = 0;
            });
          }
        },
        child: Scaffold(
            body: pages[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              selectedItemColor: AppColor.primaryColor,
              //fixedColor: AppColor.primaryColor,

              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },

              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: 'My Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_sharp),
                    label: ' My Account'),
              ],
            )));
  }
}
