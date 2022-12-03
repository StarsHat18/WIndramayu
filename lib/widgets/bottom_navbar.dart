import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/screen/about_screen.dart';
import 'package:windramayu/screen/catagory_screen.dart';
import 'package:windramayu/screen/home_screen.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List pages = [
    MyHomePage(),
    CatagoryScreen(),
    AboutScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: CSeccond,
        currentIndex: currentIndex,
        selectedItemColor: CFalse,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: "Kategori"),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_outlined), label: "Support"),
        ],
      ),
    );
  }
}
