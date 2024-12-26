import 'package:ecommerce_app/Feature/home/data/model/category_model.dart';
import 'package:ecommerce_app/Feature/home/presentation/widgets/custome_category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: CategoryModel.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomeCategoryItem(
              model: CategoryModel.categories[index],
            );
          },
        ),
      ),
    );
  }
}
