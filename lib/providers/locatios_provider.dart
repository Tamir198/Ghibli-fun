import 'package:flutter/cupertino.dart';
import 'package:ghinbli_app/models/location_model.dart';
import 'package:ghinbli_app/network/ghibli_locations.dart';

class LocationProvider extends ChangeNotifier{

final Future<List<LocationModel>> _locations = GhibliLocations().getLocations();

Future<List<LocationModel>> get locations {
  return _locations;
}

}