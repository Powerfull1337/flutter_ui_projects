import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;

  Category({required this.title, required this.icon});
}

List<Category> listOfCategories = [
  Category(title: "Woman", icon: Icons.female),
  Category(title: "Man", icon: Icons.male),
  Category(title: "Accessories", icon: Icons.watch),
  Category(title: "Beauty", icon: Icons.brush),
];
