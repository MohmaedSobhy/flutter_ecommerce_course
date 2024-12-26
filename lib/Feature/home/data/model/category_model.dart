import 'package:flutter/material.dart';

class CategoryModel {
  final IconData icon;
  final String text;

  CategoryModel({required this.icon, required this.text});

  static List<CategoryModel> categories = [
    CategoryModel(icon: Icons.home, text: 'Home'),
    CategoryModel(icon: Icons.store, text: 'Store'),
    CategoryModel(icon: Icons.favorite, text: 'Favorite'),
    CategoryModel(icon: Icons.person, text: 'Profile'),
  ];
}
