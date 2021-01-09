import 'dart:convert';

import 'package:ghinbli_app/models/people_model.dart';

import 'package:http/http.dart' as http;

class GhibliPeople{
  List<PeopleModel> peopleList = [];

  Future<List<PeopleModel>> getPeoples() async{
    final response = await http.get(
        'https://ghibliapi.herokuapp.com/people',
        headers: {'Content-Type': 'application/json'});

    List<dynamic> jsonLIst = json.decode(response.body) as List;

    for(final person in jsonLIst){
      peopleList.add(PeopleModel(
        name: person['name'].toString(),
        gender: person['gender'].toString(),
        age: person['age'].toString(), hair_color: person['hair_color'].toString(),
        eye_color: person['eye_color'].toString(),
      ));
    }

    return peopleList;

  }
}