import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),

              Image.network(
                movie.imageUrl,
                width: 200,
                height: 300,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 10),
              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(movie.description, textAlign: TextAlign.center),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Rating: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${movie.rating}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Genre: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${movie.genre}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Release Year: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${movie.releaseyear}"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Director: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${movie.director}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
