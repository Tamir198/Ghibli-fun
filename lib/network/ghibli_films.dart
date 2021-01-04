import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/film_model.dart';

class GhibliFilms {
  var client = http.Client();
  List<Film> films = [];

  Future<List<Film>> getFilms() async {

    final response = await client.get(
        'https://ghibliapi.herokuapp.com/films',
        headers: {'Content-Type': 'application/json'});

    List<dynamic> jsonLIst = json.decode(response.body) as List;
    jsonLIst.forEach((value) async {
      films.add(Film(
        title: value['title'].toString(),
        description: value['description'].toString(),
        director: value['director'].toString(),
        producer: value['producer'].toString(),
        releaseDate: value['release_date'].toString(),
      ));
    });

    return films;
  }
}
