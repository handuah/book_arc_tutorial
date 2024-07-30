import 'package:flutter/material.dart';
import 'package:foodgasm_new/books.dart';
import 'package:foodgasm_new/screens/cart.dart';
import 'package:foodgasm_new/screens/dashboard.dart';
import 'package:foodgasm_new/screens/favorites.dart';
import 'package:foodgasm_new/screens/home.dart';
import 'package:foodgasm_new/screens/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  List screens = [
    Home(),
    Books(),
    Cart(),
    Favourites(),
    User(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 2.0,
        selectedIndex: currentIndex,
        indicatorColor: const Color(0xFFB94D59).withOpacity(0.6),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            // selectedIcon: Icon(
            //   Icons.home_outlined,
            //   color: Colors.white,
            // ),
          ),
          NavigationDestination(
              icon: Icon(Icons.bar_chart_outlined), label: 'Charts'),
          NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
          NavigationDestination(
              icon: Icon(Icons.bookmark_outline), label: 'Bookmark'),
          NavigationDestination(
              icon: Icon(Icons.person_2_outlined), label: 'User'),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   onTap: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   selectedItemColor: Color(0xFFB94D59),
      //   showSelectedLabels: true,
      //   showUnselectedLabels: false,
      //   currentIndex: currentIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bar_chart_outlined),
      //       label: 'Charts',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag_outlined),
      //       label: 'Shop',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark_outline),
      //       label: 'Bookmark',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outlined),
      //       label: 'User',
      //     ),
      //   ],
      // ),
      body: screens[currentIndex],
    );
  }
}
