import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_button.dart';
import 'package:ecommerce_app/Feature/home/data/model/product_model.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/core/widgets/cahced_network_image.dart';
import 'package:flutter/material.dart';

class CustomeProductItem extends StatelessWidget {
  final Function()? onTap;
  final VoidCallback onPaymentSuccess;
  final bool isFavorite;
  final ProductModel productModel;
  const CustomeProductItem({
    super.key,
    this.isFavorite = false,
    this.onTap,
    required this.productModel,
    required this.onPaymentSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                const ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: CustomeCahcedNetworkImage(
                    url:
                        "https://img.freepik.com/premium-psd/kitchen-product-podium-display-background_1101917-13418.jpg?w=900",
                  ),
                ),
                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 35,
                    decoration: const BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )),
                    child: const Text(
                      "55% OFF",
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Product Name",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: onTap,
                        icon: Icon(
                          Icons.favorite,
                          color: isFavorite
                              ? AppColors.kPrimaryColor
                              : AppColors.kGreyColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "85LE",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "100 LE",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kGreyColor,
                            ),
                          ),
                        ],
                      ),
                      CustomeButton(
                        title: "Buy Now",
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
