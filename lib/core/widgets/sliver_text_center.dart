import 'package:flutter/material.dart';

class SliverTextCenter extends StatelessWidget {
  final String title;
  const SliverTextCenter({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
