import 'package:ecommerce_app/Feature/favourite/presentation/screens/favourite_screen.dart';
import 'package:ecommerce_app/Feature/home/presentation/screens/home_screen.dart';
import 'package:ecommerce_app/Feature/home/presentation/widgets/custome_button_navigation.dart';
import 'package:ecommerce_app/Feature/profile/presentation/screens/profile_screen.dart';
import 'package:ecommerce_app/Feature/store/presentation/screens/store_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController pageController;
  int currentScreen = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const [
            HomeScreen(),
            StoreScreen(),
            FavouriteScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CustomeButtonNavigation(
        onButtonNavigationTap: onButtonNavigationTap,
        currentScreen: currentScreen,
      ),
    );
  }

  onPageChanged(int page) {
    setState(() {
      currentScreen = page;
    });
  }

  onButtonNavigationTap(int page) {
    setState(() {
      pageController.jumpToPage(page);
      currentScreen = page;
    });
  }
}
