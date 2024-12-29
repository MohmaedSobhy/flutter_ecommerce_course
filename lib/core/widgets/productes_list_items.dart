import 'package:ecommerce_app/Feature/home/data/model/product_model.dart';
import 'package:ecommerce_app/Feature/home/presentation/widgets/custome_product_item.dart';
import 'package:flutter/material.dart';

class ProductesListItems extends StatelessWidget {
  final List<ProductModel> productModelList;
  const ProductesListItems({super.key, required this.productModelList});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: productModelList.length,
      itemBuilder: (context, index) {
        return CustomeProductItem(
          onPaymentSuccess: () {},
          productModel: productModelList[index],
        );
      },
    );
  }
}
