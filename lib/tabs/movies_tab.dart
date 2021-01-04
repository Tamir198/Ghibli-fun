import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';
import 'package:ghinbli_app/widgets/FilmWidget.dart';

class MoviesTab extends StatefulWidget {
  @override
  _MoviesTabState createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab> {
  @override
  Widget build(BuildContext context) {
    //Todo - use provider package to get the data one
    //Future films = allFilms();
    return
      FutureBuilder(
          future: GhibliFilms().getFilms(),
          builder: (context, AsyncSnapshot<List<Film>> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    //Todo return custom view
                    return FilmWidgetFromSnapshot(snapshot,index);
                  }));
            }
          });
  }
}

FilmWidget FilmWidgetFromSnapshot(AsyncSnapshot<List<Film>> snapshot, int index){
  Film snap = snapshot.data[index] as Film;
  if(snap == null)
    snap = Film();
  return FilmWidget(snap);
}
