
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/location_model.dart';
import 'package:ghinbli_app/providers/locatios_provider.dart';
import 'package:ghinbli_app/widgets/location_widget.dart';
import 'package:provider/provider.dart';

class LocationsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
        //future: GhibliFilms().getFilms(),
          future: Provider.of<LocationProvider>(context, listen: false).locations,
          builder: (context, AsyncSnapshot<List<LocationModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return LocationWidgetFromSnapshot(snapshot,index);
                  }));
            }
          });
  }
}

// ignore: lines_longer_than_80_chars, non_constant_identifier_names
LocationWidget LocationWidgetFromSnapshot(AsyncSnapshot<List<LocationModel>> snapshot, int index){
  LocationModel snap = snapshot.data[index];
  snap ??= LocationModel();
  return LocationWidget(snap);
}