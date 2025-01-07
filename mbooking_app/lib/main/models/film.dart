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

enum FilmStatus {
  nowPlaying,
  comingSoon,
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
  final FilmStatus status;

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
    required this.status,
  });
}

String genreToString(Genre genre) {
  return genre.toString().split('.').last;
}

String languageToString(Language language) {
  return language.toString().split('.').last;
}

String filmStatusToString(FilmStatus status) {
  return status.toString().split('.').last;
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
    status: FilmStatus.nowPlaying,
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
    status: FilmStatus.comingSoon,
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
    status: FilmStatus.nowPlaying,
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
    status: FilmStatus.nowPlaying,
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
    status: FilmStatus.comingSoon,
  ),
  Film(
    title: 'Spider-Man: No Way Home',
    description:
        'Peter Parker is forced to confront the chaos unleashed by the multiverse and its villains when his secret identity is revealed to the world.',
    censorship: 'PG-13',
    time: '2h28m',
    imagePath: 'assets/images/avengers.jpg',
    reviews: 1850,
    rating: 4.9,
    premier: DateTime(2021, 12, 17),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
    status: FilmStatus.nowPlaying,
  ),
  Film(
    title: 'The Dark Knight',
    description:
        'Batman faces his most dangerous adversary yet: the Joker, a criminal mastermind who seeks to create chaos in Gotham City.',
    censorship: 'PG-13',
    time: '2h32m',
    imagePath: 'assets/images/avatar.jpg',
    reviews: 2322,
    rating: 4.9,
    premier: DateTime(2008, 7, 18),
    genres: [Genre.action, Genre.drama],
    language: Language.english,
    status: FilmStatus.nowPlaying,
  ),
  Film(
    title: 'Inception',
    description:
        'A thief who enters the dreams of others to steal secrets from their subconscious is given the chance to have his past crimes erased if he can successfully perform an inception.',
    censorship: 'PG-13',
    time: '2h28m',
    imagePath: 'assets/images/quantumania.png',
    reviews: 1500,
    rating: 4.8,
    premier: DateTime(2010, 7, 16),
    genres: [Genre.action, Genre.sciFi],
    language: Language.english,
    status: FilmStatus.nowPlaying,
  ),
  Film(
    title: 'The Matrix',
    description:
        'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
    censorship: 'R',
    time: '2h16m',
    imagePath: 'assets/images/venom.jpg',
    reviews: 2500,
    rating: 4.7,
    premier: DateTime(1999, 3, 31),
    genres: [Genre.action, Genre.sciFi],
    language: Language.english,
    status: FilmStatus.nowPlaying,
  ),
  Film(
    title: 'Guardians of the Galaxy',
    description:
        'A group of intergalactic criminals must pull together to stop a fanatical warrior from taking control of the universe.',
    censorship: 'PG-13',
    time: '2h1m',
    imagePath: 'assets/images/quantumania.png',
    reviews: 1987,
    rating: 4.6,
    premier: DateTime(2014, 8, 1),
    genres: [Genre.action, Genre.adventure, Genre.sciFi],
    language: Language.english,
    status: FilmStatus.nowPlaying,
  ),
  Film(
    title: 'The Lion King',
    description:
        'A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.',
    censorship: 'G',
    time: '1h58m',
    imagePath: 'assets/images/venom.jpg',
    reviews: 2100,
    rating: 4.8,
    premier: DateTime(1994, 6, 15),
    genres: [ Genre.adventure, Genre.drama],
    language: Language.english,
    status: FilmStatus.comingSoon,
  ),
];
