import 'package:ecommerce_app/Feature/home/data/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.productName ?? "Product Name"),
                Text(
                  product.price != null ? "${product.price} LE" : "... LE",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("5.4"),
                    Icon(Icons.star, color: Colors.amber),
                  ],
                ),
                Icon(Icons.favorite, color: Colors.grey),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(product.description ?? "Product Description"),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
