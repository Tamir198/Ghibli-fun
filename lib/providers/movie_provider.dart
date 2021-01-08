import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';

class FilmsProvider extends ChangeNotifier{
  final Future<List<FilmModel>> _films = GhibliFilms().getFilms();

  //Return a copy of films
  Future<List<FilmModel>> get films {
    return _films;
  }

}