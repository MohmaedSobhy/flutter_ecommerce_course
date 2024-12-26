import 'package:ecommerce_app/Feature/home/data/model/category_model.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomeCategoryItem extends StatelessWidget {
  final CategoryModel model;
  const CustomeCategoryItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.kPrimaryColor,
              foregroundColor: AppColors.kWhiteColor,
              child: Icon(
                model.icon,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(model.text),
          ],
        ),
      ),
    );
  }
}
