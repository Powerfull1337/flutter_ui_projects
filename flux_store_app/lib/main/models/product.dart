class Product {
  final String title;
  final String imagePath;
  final double price;

  Product({required this.title, required this.imagePath, required this.price});
}

List<Product> listOfProducts = [
  Product(
    title: "Beautiful 1",
    imagePath: "assets/images/main/woman1.jpg",
    price: 999.99,
  ),
  Product(
    title: "Beautiful 2",
    imagePath: "assets/images/main/woman2.jpg",
    price: 799.99,
  ),
  Product(
    title: "Beautiful 3",
    imagePath: "assets/images/main/woman3.jpg",
    price: 199.99,
  ),
  Product(
    title: "Beautiful 4",
    imagePath: "assets/images/main/woman4.jpg",
    price: 249.99,
  ),
  Product(
    title: "Beautiful 5",
    imagePath: "assets/images/main/woman5.jpg",
    price: 499.99,
  ),
];
