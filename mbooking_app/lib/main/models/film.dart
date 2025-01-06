enum Genre {
  action,
  adventure,
  comedy,
  drama,
  fantasy,
  sciFi,
  horror,
  romance,
}

enum Language {
  english,
  spanish,
  french,
  german,
  chinese,
  japanese,
  korean,
}

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
  final Language language;

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
    required this.language,
  });
}

String genreToString(Genre genre) {
  return genre.toString().split('.').last;
}

String languageToString(Language language) {
  return language.toString().split('.').last;
}

List<Film> listOfFilms = [
  Film(
    title: 'Avengers - Infinity War',
    description:
        'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation wipes out half the universe.',
    censorship: 'PG-13',
    time: '2h29m',
    imagePath: 'assets/images/avengers.jpg',
    reviews: 1222,
    rating: 4.8,
    premier: DateTime(2018, 4, 26),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
  ),
  Film(
    title: 'Avatar',
    description:
        'On the lush alien world of Pandora, a reluctant hero embarks on an epic journey, ultimately leading to a battle for the survival of his new home.',
    censorship: 'PG-13',
    time: '2h42m',
    imagePath: 'assets/images/avatar.jpg',
    reviews: 1345,
    rating: 4.7,
    premier: DateTime(2009, 12, 18),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
  ),
  Film(
    title: 'Venom',
    description:
        'When journalist Eddie Brock acquires the powers of a symbiote, he must release his alter-ego "Venom" to save his life and protect the city from a deadly threat.',
    censorship: 'PG-13',
    time: '1h52m',
    imagePath: 'assets/images/venom.jpg',
    reviews: 1189,
    rating: 4.5,
    premier: DateTime(2018, 10, 5),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
  ),
  Film(
    title: 'Ant-Man and the Wasp: Quantumania',
    description:
        'Scott Lang and Hope Van Dyne, along with their family, explore the Quantum Realm, where they interact with strange creatures and embark on an adventure beyond the limits of what they thought was possible.',
    censorship: 'PG-13',
    time: '2h5m',
    imagePath: 'assets/images/quantumania.png',
    reviews: 1320,
    rating: 4.3,
    premier: DateTime(2023, 2, 17),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
  ),
  Film(
    title: 'Venom 2',
    description:
        'Eddie Brock is still struggling to coexist with the shape-shifting extraterrestrial Venom. When a new threat emerges in the form of a powerful symbiote, chaos ensues in this thrilling sequel.',
    censorship: 'PG-13',
    time: '1h37m',
    imagePath: 'assets/images/venom.jpg',
    reviews: 1275,
    rating: 4.4,
    premier: DateTime(2021, 10, 1),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
  ),
];
