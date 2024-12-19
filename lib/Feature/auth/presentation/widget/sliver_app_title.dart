import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class SliverAppTitle extends StatelessWidget {
  const SliverAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Text(
        AppString.welcome,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
