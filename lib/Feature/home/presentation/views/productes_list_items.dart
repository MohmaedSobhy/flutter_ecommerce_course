import 'package:flutter/material.dart';

class ProductesListItems extends StatelessWidget {
  const ProductesListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const SizedBox();
      },
    );
  }
}
