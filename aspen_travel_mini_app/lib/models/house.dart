class House {
  House(
      {required this.name,
      required this.rating,
      required this.reviews,
      required this.description,
      required this.price,
      required this.image});

  final String name;
  final double rating;
  final int reviews;
  final String description;
  final double price;
  final String image;
}

List<House> listOfHouses = [
  House(
      name: "Mountain Retreat",
      rating: 4.8,
      reviews: 125,
      description:
          "A cozy retreat nestled in the mountains, this charming getaway offers the perfect escape from the hustle and bustle of everyday life. Surrounded by lush forests and breathtaking vistas, it’s an ideal haven for nature lovers, adventure seekers, or anyone looking to recharge their spirit.",
      price: 250.0,
      image: "assets/images/splash_page_bg.png"),
  House(
      name: "Beachside Villa",
      rating: 4.5,
      reviews: 200,
      description:
          "A luxurious villa located right on the beach with stunning ocean views.",
      price: 400.0,
      image: "assets/images/splash_page_bg.png"),
];

List<House> listOfRecomendedHouse = [
  House(
      name: "City Loft",
      rating: 4.2,
      reviews: 89,
      description:
          "A modern loft in the heart of the city, ideal for urban explorers.",
      price: 180.0,
      image: "assets/images/Explore Aspen.png"),
  House(
      name: "Rustic Farmhouse",
      rating: 4.7,
      reviews: 150,
      description:
          "A charming farmhouse surrounded by rolling hills and lush greenery.",
      price: 220.0,
      image: "assets/images/Luxurius Aspen.png"),
];

final listOfCategories = ["Location", "Hotels", "Food", "Adenture", "Action"];
