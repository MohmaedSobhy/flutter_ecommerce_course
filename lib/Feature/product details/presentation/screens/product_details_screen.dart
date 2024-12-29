import 'package:ecommerce_app/Feature/home/data/model/product_model.dart';
import 'package:ecommerce_app/Feature/product%20details/presentation/views/product_details_view.dart';
import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:ecommerce_app/core/widgets/cahced_network_image.dart';
import 'package:ecommerce_app/core/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          90,
        ),
        child: CustomeAppBarView(
            title: productModel.productName ?? 'Product Name'),
      ),
      body: CustomScrollView(
        slivers: [
          CustomeCahcedNetworkImage(
            url: productModel.imageUrl ?? AppString.imageUrl,
          ),
          ProductDetailsView(product: productModel),
          // Add Rating
        ],
      ),
    );
  }
}
