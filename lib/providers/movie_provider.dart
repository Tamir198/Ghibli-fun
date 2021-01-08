import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';

class FilmsProvider extends ChangeNotifier{
  final Future<List<Film>> _films = GhibliFilms().getFilms();

  //Return a copy of films
  Future<List<Film>> get films {
    return _films;
  }

}