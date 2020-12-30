import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/film_model.dart';

class FilmWidget extends StatelessWidget {
  Film filmData;
  FilmWidget({@required this.filmData});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('${filmData.title}\n',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Text('${filmData.description}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Produced by: ${filmData.producer}'),
          Text('ReleaseDate: ${filmData.releaseDate}'),
        ],
      ),
    );
  }
}
