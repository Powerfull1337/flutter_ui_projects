import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/models/film.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Film> listOfComingSoonFilms = listOfFilms
        .where((film) => film.status == FilmStatus.comingSoon)
        .toList();
    List<Film> listOfNowPlayingFilms = listOfFilms
        .where((film) => film.status == FilmStatus.nowPlaying)
        .toList();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 20,
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF1C1C1C),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppColor.primaryOrangeColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  dividerHeight: 0,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  tabs: const [
                    Tab(text: 'Now Playing'),
                    Tab(text: 'Coming Soon'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.6,
                ),
                itemCount: listOfNowPlayingFilms.length,
                itemBuilder: (context, index) {
                  final film = listOfNowPlayingFilms[index];
                  return buildMovieCard(film, true);
                },
              ),
            ),
            SingleChildScrollView(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.6,
                ),
                itemCount: listOfComingSoonFilms.length,
                itemBuilder: (context, index) {
                  final film = listOfComingSoonFilms[index];
                  return buildMovieCard(film, false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMovieCard(Film film, bool showRating) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                film.imagePath,
                fit: BoxFit.cover,
                height: 210,
                width: 195,
              ),
            ),
            Flexible(
              child: Text(
                film.title,
                overflow: TextOverflow.ellipsis, 
                style: const TextStyle(
                    color: AppColor.primaryOrangeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            if (showRating) ...[
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    film.rating.toString(),
                    style: const TextStyle(color: Color(0xFFDEDEDE)),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "(${film.reviews})",
                    style: const TextStyle(
                        color: Color(0xFFDEDEDE),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
            Row(
              children: [
                const Icon(
                  Icons.timer,
                  color: Color(0xFFDEDEDE),
                ),
                const SizedBox(width: 4),
                Text(
                  film.time,
                  style: const TextStyle(color: Color(0xFFDEDEDE)),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.camera_alt_sharp,
                  color: Color(0xFFDEDEDE),
                ),
                const SizedBox(width: 4),
                Text(
                  film.genres.map((genre) => genreToString(genre)).join(", "),
                  style: const TextStyle(color: Color(0xFFDEDEDE)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
