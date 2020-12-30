import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';
import 'package:ghinbli_app/widgets/FilmWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ghibli facts',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ghibli facts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //Future films = allFilms();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: FutureBuilder(
          future: GhibliFilms().getFilms(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                //Todo return custom view
                return FilmWidget(filmData: snapshot.data[index]);
              }));
            }
          }),
    );
  }
}
