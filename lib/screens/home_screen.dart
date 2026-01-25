import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_card.dart';

final List<Movie> movies = [
  Movie(
    title: "The Dark Knight",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg",
    description:
        'Batman has a new foe, the Joker, who is an accomplished criminal hell-bent on decimating Gotham City. Together with Gordon and Harvey Dent, Batman struggles to thwart the Joker before it is too late.',
    rating: 9.1,
    genre: 'Crime thriller, neo-noir, and action drama',
    releaseyear: 2008,
    director: 'Christopher Nolan',
  ),
  Movie(
    title: "Inception",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg",
    description:
        'Cobb steals information from his targets by entering their dreams. He is wanted for his alleged role in his wifes murder and his only chance at redemption is to perform a nearly impossible task',
    rating: 8.8,
    genre: 'Science fiction action thriller',
    releaseyear: 2010,
    director: 'Christopher Nolan',
  ),
  Movie(
    title: "Interstellar",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkshzpfsh566sD5Im2qzFxaxfNFFqSQAFZgg&s",
    description:
        'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.',
    rating: 8.7,
    genre: 'Hard science fiction, space epic, and dystopian drama',
    releaseyear: 2014,
    director: 'Christopher Nolan',
  ),
  Movie(
    title: "The Matrix",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZNl1EYS9z4PfNViNWMK_V5ZspshcWfksobw&s",
    description:
        'Neo, a computer programmer and hacker, has always questioned the reality of the world around him. His suspicions are confirmed when Morpheus, a rebel leader, contacts him and reveals the truth to him.',
    rating: 8.7,
    genre: 'Science Fiction Action ',
    releaseyear: 1999,
    director: 'Lana Wachowski and Lilly Wachowski',
  ),
  Movie(
    title: "Toy Story",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd1_9O7ZAMWdim0aZ3AGYpzugvq7EPOdJpHA&s",
    description:
        'Andys favourite toy, Woody, is worried that after Andy receives his birthday gift, a new toy called Buzz Lightyear, his importance may get reduced. He thus hatches a plan to eliminate Buzz.',
    rating: 8.3,
    genre: 'Fantasy-adventure comedy',
    releaseyear: 1995,
    director: 'John Lasseter',
  ),
  Movie(
    title: "Mr. Robot",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BOTg4NTBiZDAtZTc0YS00NzZlLTg4Y2ItNGQ3M2ZlMDM5MWQzXkEyXkFqcGc@._V1_.jpg",
    description:
        'Elliot, a cyber-security engineer suffering from anxiety, works for a corporation and hacks felons by night. Panic strikes him after Mr Robot, a cryptic anarchist, recruits him to ruin his company.',
    rating: 8.5,
    genre: 'Psychological techno-thriller and drama',
    releaseyear: 2019,
    director: 'Sam Esmail',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // columns in the grid
          childAspectRatio: 0.7, // width to height ratio of each grid item
          crossAxisSpacing: 10, // horizontal space between grid items
          mainAxisSpacing: 10, // vertical space between grid items
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}
