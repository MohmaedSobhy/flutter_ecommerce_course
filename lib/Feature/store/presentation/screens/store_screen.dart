import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:ecommerce_app/core/widgets/custome_search_field.dart';
import 'package:ecommerce_app/core/widgets/productes_list_items.dart';
import 'package:ecommerce_app/core/widgets/sliver_sized_box_height.dart';
import 'package:ecommerce_app/core/widgets/sliver_text_center.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverSizedBoxHeight(
          height: 20,
        ),
        SliverTextCenter(title: AppString.welcome),
        SliverSizedBoxHeight(
          height: 15,
        ),
        CustomSearchField(),
        SizedBox(
          height: 15,
        ),
        ProductesListItems(
          productModelList: [],
        ),
      ],
    );
  }
}
