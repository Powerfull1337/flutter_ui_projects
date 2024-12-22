class Product {
  final String title;
  final String description;
  final double price;
  final double originalPrice;
  final double discount;
  final int reviews;
  final String imagePath;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.reviews,
    required this.imagePath,
  });
}

List<Product> listOfProducts = [
  Product(
    title: 'Nike Air Max 90',
    description:
        'Legendary sneakers with a classic design and maximum comfort.',
    price: 1500.0,
    reviews: 120,
    imagePath: 'assets/images/sneakers 1.jpg',
    originalPrice: 3000.0,
    discount: 50.0,
  ),
  Product(
    title: 'Adidas Ultraboost 22',
    description: 'High-performance running sneakers with unmatched cushioning.',
    price: 1500.0,
    reviews: 120,
    imagePath: 'assets/images/sneakers 2.jpg',
    originalPrice: 3000.0,
    discount: 50.0,
  ),
  Product(
    title: 'Puma RS-X3',
    description: 'Stylish retro-inspired sneakers with bold colors.',
    price: 1500.0,
    reviews: 120,
    imagePath: 'assets/images/sneakers 3.jpg',
    originalPrice: 3000.0,
    discount: 50.0,
  ),
  Product(
    title: 'New Balance 574',
    description: 'Timeless sneakers that combine style and functionality.',
    price: 1500.0,
    reviews: 120,
    imagePath: 'assets/images/sneakers 4.jpg',
    originalPrice: 3000.0,
    discount: 50.0,
  ),
];
