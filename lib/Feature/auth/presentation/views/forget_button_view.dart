import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class ForgetButtonView extends StatelessWidget {
  const ForgetButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          AppString.forgetPasswrod,
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
