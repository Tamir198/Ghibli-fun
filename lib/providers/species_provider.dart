import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/species_model.dart';
import 'package:ghinbli_app/network/ghibli_species.dart';

class SpeciesProvider extends ChangeNotifier {

  final Future<List<SpeciesModel>> _species = GhibliSpecies().getSpecies();

  Future<List<SpeciesModel>> get species{
    return _species;
  }

}
