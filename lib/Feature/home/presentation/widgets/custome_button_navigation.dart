import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomeButtonNavigation extends StatelessWidget {
  final Function(int) onButtonNavigationTap;

  const CustomeButtonNavigation(
      {super.key, required this.onButtonNavigationTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.kWhiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        child: GNav(
          onTabChange: onButtonNavigationTap,
          rippleColor: AppColors.kPrimaryColor,
          hoverColor: AppColors.kPrimaryColor,
          duration: const Duration(milliseconds: 400),
          gap: 8,
          color: AppColors.kGreyColor,
          activeColor: AppColors.kWhiteColor,
          iconSize: 24,
          tabBackgroundColor: AppColors.kPrimaryColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.store,
              text: 'Store',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
