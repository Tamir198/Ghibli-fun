import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/vehicles_model.dart';

class GhibliVehicles {
  List<VehiclesModel> vehicles = [];

  Future<List<VehiclesModel>> getVehicles() async {
    final response = await http.get('https://ghibliapi.herokuapp.com/vehicles',
        headers: {'Content-Type': 'application/json'});

    List<dynamic> jsonLIst = json.decode(response.body) as List;
    jsonLIst.forEach((value) async {
      vehicles.add(VehiclesModel(
        name: value['name'].toString(),
        description: value['description'].toString(),
        vehicle_class: value['vehicle_class'].toString(),
        length: value['length'].toString(),
      ));
    });

    return vehicles;
  }
}
