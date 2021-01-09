import 'dart:convert';
import 'package:ghinbli_app/models/species_model.dart';
import 'package:http/http.dart' as http;

class GhibliSpecies {
  List<SpeciesModel> species = [];

  Future<List<SpeciesModel>> getSpecies() async {
    final response = await http.get('https://ghibliapi.herokuapp.com/species',
        headers: {'Content-Type': 'application/json'});

    List<dynamic> jsonLIst = json.decode(response.body) as List;

    for (final singleSpecies in jsonLIst) {
      //Todo check why I cant add data to the list
      species.add(SpeciesModel(
        name: singleSpecies['name'].toString(),
        classification: singleSpecies['classification'].toString(),
        hair_colors: singleSpecies['hair_colors'].toString(),
        eye_colors: singleSpecies['eye_colors'].toString(),
      ));
    }
    return species;
  }
}
