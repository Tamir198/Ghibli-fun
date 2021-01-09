import 'dart:convert';

import 'package:ghinbli_app/models/location_model.dart';

import 'package:http/http.dart' as http;

class GhibliLocations{

  List<LocationModel> locations = [];

  Future<List<LocationModel>> getLocations() async {
    final response = await http.get(
        'https://ghibliapi.herokuapp.com/locations',
        headers: {'Content-Type': 'application/json'});

    List<dynamic> jsonLIst = json.decode(response.body) as List;

    for(var location in jsonLIst){
      locations.add(LocationModel(
        name: location['name'].toString(),
        surface_water : location['surface_water'].toString(),
        climate: location['climate'].toString(),
        terrain: location['terrain'].toString()
      ));
    }

    return locations;

  }


}