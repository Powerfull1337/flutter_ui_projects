class Film {
  final String title;
  final String description;
  final String censorship;
  final String time;
  final String imagePath;
  final int reviews;
  final double rating;
  final DateTime premier;
  final List<Genre> genres;

  Film({
    required this.title,
    required this.description,
    required this.censorship,
    required this.time,
    required this.imagePath,
    required this.reviews,
    required this.rating,
    required this.premier,
    required this.genres,
  });
}

String genreToString(Genre genre) {
  return genre.toString().split('.').last;
}

List<Film> listOfFilms = [
  Film(
    title: 'Avengers - Infinity War',
    description: 'A group of superheroes fights to save the universe.',
    censorship: 'PG-13',
    time: '2h29m',
    imagePath: 'assets/images/avengers.jpg',
    reviews: 1222,
    rating: 4.8,
    premier: DateTime(2018, 4, 26),
    genres: [Genre.Action, Genre.Adventure, Genre.SciFi],
  ),
  Film(
    title: 'Avatar',
    description: 'A group of superheroes fights to save the universe.',
    censorship: 'PG-13',
    time: '2h29m',
    imagePath: 'assets/images/avatar.jpg',
    reviews: 1222,
    rating: 4.8,
    premier: DateTime(2018, 4, 26),
    genres: [Genre.Action, Genre.Adventure, Genre.SciFi],
  ),
  Film(
    title: 'venom',
    description: 'A group of superheroes fights to save the universe.',
    censorship: 'PG-13',
    time: '2h29m',
    imagePath: 'assets/images/venom.jpg',
    reviews: 1222,
    rating: 4.8,
    premier: DateTime(2018, 4, 26),
    genres: [Genre.Action, Genre.Adventure, Genre.SciFi],
  ),
  Film(
    title: 'Ant-Man and the Wasp: Quantumania – The Merionite',
    description: 'A group of superheroes fights to save the universe.',
    censorship: 'PG-13',
    time: '2h29m',
    imagePath: 'assets/images/quantumania.png',
    reviews: 1222,
    rating: 4.8,
    premier: DateTime(2018, 4, 26),
    genres: [Genre.Action, Genre.Adventure, Genre.SciFi],
  ),
  Film(
    title: 'venom',
    description: 'A group of superheroes fights to save the universe.',
    censorship: 'PG-13',
    time: '2h29m',
    imagePath: 'assets/images/venom.jpg',
    reviews: 1222,
    rating: 4.8,
    premier: DateTime(2018, 4, 26),
    genres: [Genre.Action, Genre.Adventure, Genre.SciFi],
  ),
];

enum Genre {
  Action,
  Adventure,
  Comedy,
  Drama,
  Fantasy,
  SciFi,
  Horror,
  Romance,
}
