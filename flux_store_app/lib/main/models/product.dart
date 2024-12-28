class Product {
  final String title;
  final String imagePath;
  final double price;
  final int reviews;

  Product(
      {required this.title,
      required this.imagePath,
      required this.price,
      required this.reviews});
}

List<Product> listOfProducts = [
  Product(
    title: "Beautiful 1",
    imagePath: "assets/images/main/woman1.jpg",
    price: 999.99,
    reviews: 124,
  ),
  Product(
    title: "Beautiful 2",
    imagePath: "assets/images/main/woman2.jpg",
    price: 799.99,
    reviews: 1124,
  ),
  Product(
    title: "Beautiful 3",
    imagePath: "assets/images/main/woman3.jpg",
    price: 199.99,
    reviews: 1224,
  ),
  Product(
    title: "Beautiful 4",
    imagePath: "assets/images/main/woman4.jpg",
    price: 249.99,
    reviews: 1244,
  ),
  Product(
    title: "Beautiful 5",
    imagePath: "assets/images/main/woman5.jpg",
    price: 1499.99,
    reviews: 12774,
  ),
  Product(
    title: "Beautiful 6",
    imagePath: "assets/images/main/woman1.jpg",
    price: 599.99,
    reviews: 12411,
  ),
  Product(
    title: "Beautiful 7",
    imagePath: "assets/images/main/woman2.jpg",
    price: 889.99,
    reviews: 12,
  ),
  Product(
    title: "Beautiful 8",
    imagePath: "assets/images/main/woman3.jpg",
    price: 429.99,
    reviews: 156,
  ),
  Product(
    title: "Beautiful 9",
    imagePath: "assets/images/main/woman4.jpg",
    price: 222.99,
    reviews: 77,
  ),
  Product(
    title: "Beautiful 10",
    imagePath: "assets/images/main/woman5.jpg",
    price: 429.89,
    reviews: 76,
  ),
];
