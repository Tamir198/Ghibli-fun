import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';
import 'package:ghinbli_app/providers/movie_provider.dart';
import 'package:ghinbli_app/widgets/FilmWidget.dart';
import 'package:provider/provider.dart';

class MoviesTab extends StatelessWidget {
  //Provider provider = Provider.of(context)

  @override
  Widget build(BuildContext context) {
    //Todo - use provider package to get the data one
    return
      FutureBuilder(
          //future: GhibliFilms().getFilms(),
          future: Provider.of<FilmsProvider>(context, listen: false).films,
          builder: (context, AsyncSnapshot<List<FilmModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return movieWidgetFromSnapshot(snapshot,index);
                  }));
            }
          });
  }
}

// ignore: lines_longer_than_80_chars, non_constant_identifier_names
FilmWidget movieWidgetFromSnapshot(AsyncSnapshot<List<FilmModel>> snapshot, int index){
  FilmModel snap = snapshot.data[index];
  snap ??= FilmModel();
  return FilmWidget(snap);
}
