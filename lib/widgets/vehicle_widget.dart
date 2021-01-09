import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/vehicles_model.dart';

class VehicleWidget extends StatelessWidget {

  VehiclesModel vehicleData;
  VehicleWidget(this.vehicleData);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('${vehicleData.name}\n',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          Text('${vehicleData.description}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Align( alignment: Alignment.centerLeft,child: Text('Type: ${vehicleData.vehicle_class}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900))),
          Align( alignment: Alignment.centerLeft,child: Text('length in feet: ${vehicleData.length}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900))),
      ]));
  }
}

