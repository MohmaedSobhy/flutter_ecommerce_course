import 'package:flutter/material.dart';

class SliverSizedBoxHeight extends StatelessWidget {
  final double height;
  const SliverSizedBoxHeight({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }
}
