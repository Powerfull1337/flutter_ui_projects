import 'package:flutter/material.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/models/film.dart';
import 'package:mbooking_app/main/pages/seat_selection_page.dart';
import 'package:mbooking_app/widgets/custom_button.dart';
import 'package:readmore/readmore.dart';

class FilmDetailsPage extends StatefulWidget {
  const FilmDetailsPage({super.key, required this.film});

  final Film film;

  @override
  State<FilmDetailsPage> createState() => _FilmDetailsPageState();
}

class _FilmDetailsPageState extends State<FilmDetailsPage> {
  int selectedCinemaIndex = 0;
  @override
  Widget build(BuildContext context) {
    String formatedDate = DateFormat('dd.MM.yyy').format(widget.film.premier);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      widget.film.imagePath,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: 30,
                      left: 16,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -100,
                      left: 16,
                      right: 16,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1C1C1C),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.film.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    widget.film.time,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Text(
                                    " • ",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    formatedDate,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  const Text(
                                    "Review",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    widget.film.rating.toString(),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "(${widget.film.reviews})",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    initialRating: widget.film.rating,
                                    ignoreGestures: false,
                                    itemSize: 30,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: const Color(0xFFBFBFBF))),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.play_arrow_sharp,
                                            color: Color(0xFFBFBFBF)),
                                        Text(
                                          "Watch trailer",
                                          style: TextStyle(
                                              color: Color(0xFFBFBFBF),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 130),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Movie Genre: ",
                                style: TextStyle(color: Color(0xFFCDCDCD)),
                              ),
                              SizedBox(height: 16),
                              Text(
                                "Censorship: ",
                                style: TextStyle(color: Color(0xFFCDCDCD)),
                              ),
                              SizedBox(height: 16),
                              Text(
                                "Language: ",
                                style: TextStyle(color: Color(0xFFCDCDCD)),
                              ),
                            ],
                          ),
                          const SizedBox(width: 60),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.film.genres
                                    .map((genre) => genreToString(genre))
                                    .join(', '),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                widget.film.censorship,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                widget.film.language.toString().split('.').last,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Storiline",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      ReadMoreText(
                        widget.film.description,
                        trimLength: 130,
                        trimMode: TrimMode.Length,
                        trimCollapsedText: " Read More",
                        trimExpandedText: " Read Less",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        moreStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryOrangeColor,
                        ),
                        lessStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryOrangeColor,
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Director",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 15),
                          itemCount: listOfDirectors.length,
                          itemBuilder: (context, index) {
                            final director = listOfDirectors[index];
                            return ActorDirectorContainer(
                              imagePath: director.imagePath,
                              name: director.name,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Actor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 15),
                          itemCount: listOfActors.length,
                          itemBuilder: (context, index) {
                            final actor = listOfActors[index];
                            return ActorDirectorContainer(
                              imagePath: actor.imagePath,
                              name: actor.name,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Cinema",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 15),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCinemaIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: index == selectedCinemaIndex
                                        ? const Color(0xFF261D08)
                                        : const Color(0xFF1C1C1C),
                                    border: index == selectedCinemaIndex
                                        ? Border.all(
                                            color: AppColor.primaryOrangeColor,
                                          )
                                        : null),
                                height: 90,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Vincom Ocean Park CGV",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/cinemacgv.png',
                                          height: 15,
                                          width: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Row(
                                      children: [
                                        Text(
                                          "4.55 km Da Ton, Gia Lam, Ha Noi",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFF2F2F2)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      CustomButton(
                        text: "Continue",
                        onTap: () {
                          NavigationService().push(SeatSelectionPage(film: widget.film,));
                        },
                      ),
                      const SizedBox(height: 15),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ActorDirectorContainer extends StatelessWidget {
  const ActorDirectorContainer({
    super.key,
    required this.name,
    required this.imagePath,
  });

  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    List<String> nameParts = name.split(' ');

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(imagePath),
            radius: 25,
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameParts[0],
                style: const TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                nameParts[1],
                style: const TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Director {
  final String imagePath;
  final String name;

  Director({required this.imagePath, required this.name});
}

class Actor {
  final String imagePath;
  final String name;

  Actor({required this.imagePath, required this.name});
}

List<Director> listOfDirectors = [
  Director(imagePath: 'assets/images/russo.jpg', name: 'Anthony Russo'),
  Director(imagePath: 'assets/images/russo.jpg', name: 'Joseph Russo'),
];

List<Actor> listOfActors = [
  Actor(imagePath: 'assets/images/russo.jpg', name: 'Billy Herington'),
  Actor(imagePath: 'assets/images/russo.jpg', name: 'Someone Man'),
  Actor(imagePath: 'assets/images/russo.jpg', name: 'Someone Woman'),
  Actor(imagePath: 'assets/images/russo.jpg', name: 'Actor Four'),
  Actor(imagePath: 'assets/images/russo.jpg', name: 'Actor Five'),
];
