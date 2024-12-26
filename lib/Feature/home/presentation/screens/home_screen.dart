import 'package:ecommerce_app/Feature/home/presentation/views/category_list_view.dart';
import 'package:ecommerce_app/Feature/home/presentation/views/productes_list_items.dart';
import 'package:ecommerce_app/Feature/home/presentation/widgets/custome_search_field.dart';
import 'package:ecommerce_app/core/widgets/sliver_sized_box_height.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            child: CustomSearchField(),
          ),
          SliverSizedBoxHeight(height: 20),
          SliverToBoxAdapter(
            child: Image(
              image: AssetImage("images/buy.jpg"),
            ),
          ),
          SliverSizedBoxHeight(height: 15),
          SliverToBoxAdapter(
            child: Text(
              "Popular Categories",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverSizedBoxHeight(height: 15),
          CategoryListView(),
          SliverSizedBoxHeight(height: 15),
          SliverToBoxAdapter(
            child: Text(
              "Popular Products",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ProductesListItems(),
        ],
      ),
    );
  }
}
