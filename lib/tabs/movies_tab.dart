import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';
import 'package:ghinbli_app/widgets/FilmWidget.dart';

class MoviesTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Todo - use provider package to get the data one
    return
      FutureBuilder(
          future: GhibliFilms().getFilms(),
          builder: (context, AsyncSnapshot<List<Film>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FilmWidgetFromSnapshot(snapshot,index);
                  }));
            }
          });
  }
}

// ignore: lines_longer_than_80_chars, non_constant_identifier_names
FilmWidget FilmWidgetFromSnapshot(AsyncSnapshot<List<Film>> snapshot, int index){
  Film snap = snapshot.data[index];
  snap ??= Film();
  return FilmWidget(snap);
}
