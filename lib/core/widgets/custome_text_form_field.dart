import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.suffIcon,
    this.isSecured = false,
    this.keyboardType,
    this.controller,
  });
  final String labelText;
  final Widget? suffIcon;
  final bool isSecured;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isSecured,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppString.fieldRequired;
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffIcon,
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.kBordersideColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.kBordersideColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
