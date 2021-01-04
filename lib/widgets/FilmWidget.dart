import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/film_model.dart';

class FilmWidget extends StatelessWidget {
  Film filmData;
  FilmWidget(this.filmData);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('\n${filmData.title}\n',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          Text('${filmData.description}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Produced by: ${filmData.producer}'),
          Text('ReleaseDate: ${filmData.releaseDate}'),
        ],
      ),
    );
  }
}

