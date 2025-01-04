import 'package:flutter/material.dart';

class Type {
  final String name;
  final Color color;
  final String imagePath;

  Type({required this.name, required this.color, required this.imagePath});
}

List<Type> listOfTypes = [
  Type(
      name: "CLOTHING",
      color: const Color(0xFFA3A798),
      imagePath: "assets/images/main/woman without bg 1.png"),
  Type(
      name: "ACCESSORIES",
      color: const Color(0xFF898280),
      imagePath: "assets/images/main/woman without bg 2.png"),
  Type(
      name: "SHOES",
      color: const Color(0xFF44565C),
      imagePath: "assets/images/main/woman without bg 3.png"),
  Type(
      name: "COLLECTION",
      color: const Color(0xFFB9AEB2),
      imagePath: "assets/images/main/woman without bg 1.png")
];
