import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/vehicles_model.dart';
import 'package:ghinbli_app/network/ghibli_vehicles.dart';

class VehiclesProvider extends ChangeNotifier{

  Future<List<VehiclesModel>> _vehicles = GhibliVehicles().getVehicles();

  //Return a copy of films
  Future<List<VehiclesModel>> get vehicles {
    return _vehicles;
  }

}