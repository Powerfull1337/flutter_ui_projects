class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

List<Category> listOfCategories = [
  Category(name: "Beauty", imagePath: "assets/images/Beauty.jpg"),
  Category(name: "Fashion", imagePath: "assets/images/Fashion.jpg"),
  Category(name: "Kids", imagePath: "assets/images/Kids.jpg"),
  Category(name: "Mens", imagePath: "assets/images/Mens.jpeg"),
  Category(name: "Womens", imagePath: "assets/images/Womens.jpg")
];
