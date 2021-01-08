import 'package:flutter/material.dart';

import 'package:ghinbli_app/models/vehicles_model.dart';
import 'package:ghinbli_app/network/ghibli_vehicles.dart';
import 'package:ghinbli_app/providers/vehicles_providret.dart';
import 'package:ghinbli_app/widgets/VehicleWidget.dart';
import 'package:provider/provider.dart';

class VehiclesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<VehiclesProvider>(context, listen: false).vehicles,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Center(
              child: ListView.builder(
            itemCount: snapshot.data?.length as int,
            itemBuilder: (BuildContext context, int index) {
              return FilmWidgetFromSnapshot(snapshot, index);
            },
          ));
        }
      },
    );
  }
}

// ignore: lines_longer_than_80_chars, non_constant_identifier_names
VehicleWidget FilmWidgetFromSnapshot(AsyncSnapshot<dynamic> snapshot, int index) {
  VehiclesModel snap = snapshot.data[index] as VehiclesModel;
  snap ??= VehiclesModel();
  return VehicleWidget(snap);
}
