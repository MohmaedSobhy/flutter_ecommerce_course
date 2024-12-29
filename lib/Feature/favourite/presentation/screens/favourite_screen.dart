import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:ecommerce_app/core/widgets/productes_list_items.dart';
import 'package:ecommerce_app/core/widgets/sliver_sized_box_height.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverSizedBoxHeight(
            height: 20,
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                AppString.yourFavouritProducts,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverSizedBoxHeight(
            height: 15,
          ),
          ProductesListItems(
            productModelList: [],
          ),
        ],
      ),
    );
  }
}
