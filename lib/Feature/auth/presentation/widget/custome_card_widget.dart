import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class CustomeCardWidget extends StatelessWidget {
  final Widget child;
  const CustomeCardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kWhiteColor,
      margin: const EdgeInsets.all(24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: child,
    );
  }
}
