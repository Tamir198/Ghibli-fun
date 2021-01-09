import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/species_model.dart';
import 'package:ghinbli_app/providers/species_provider.dart';
import 'package:ghinbli_app/widgets/species_widget.dart';
import 'package:provider/provider.dart';

class SpeciesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
          future: Provider.of<SpeciesProvider>(context, listen: false).species,
          builder: (context, AsyncSnapshot<List<SpeciesModel>> snapshot) {
            if (!snapshot.hasData) {
              print('I dont have data ${snapshot.data}');
              return const Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return speciesWidgetFromSnapshot(snapshot,index);
                  }));
            }
          });
  }

  // ignore: lines_longer_than_80_chars, non_constant_identifier_names
  SpeciesWidget speciesWidgetFromSnapshot(AsyncSnapshot<List<SpeciesModel>> snapshot, int index){
    SpeciesModel snap = snapshot.data[index];
    snap ??= SpeciesModel();
    return SpeciesWidget(snap);
  }

}