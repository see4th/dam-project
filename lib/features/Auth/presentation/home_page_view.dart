import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_app/core/utils/constants.dart';
import 'package:new_app/features/Auth/presentation/pages/favorite_page.dart';
import 'package:new_app/features/Auth/presentation/pages/home_page.dart';
import 'package:new_app/features/Auth/presentation/pages/search_page.dart';
import 'package:new_app/features/Auth/presentation/pages/user_page.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedIndex = 0;

  void onTabNav(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const FavoritePage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GNav(
          color: IconColor,
          activeColor: MainColor, // Make sure MainColor is properly defined
          gap: 8,
          duration: const Duration(milliseconds: 500),
          onTabChange: onTabNav,
          padding: EdgeInsets.all(16),
          tabBackgroundColor: Color.fromARGB(69, 144, 202, 249),
          tabs: [
            GButton(
              icon: Icons.home_rounded,
              text: "Home",
            ),
            GButton(icon: Icons.search_rounded, text: "Search"),
            GButton(icon: Icons.favorite, text: "Favorite"),
            GButton(icon: Icons.person_sharp, text: "Profile"),
          ],
        ),
      ),
    );
  }
}
