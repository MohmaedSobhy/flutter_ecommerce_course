import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomeAppBarView extends StatelessWidget {
  final String title;
  const CustomeAppBarView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: AppColors.kWhiteColor),
      ),
      backgroundColor: AppColors.kPrimaryColor,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.kWhiteColor,
        ),
      ),
    );
  }
}
