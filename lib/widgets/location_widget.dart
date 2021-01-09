

import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/location_model.dart';

class LocationWidget extends StatelessWidget {

  LocationModel locationData;
  LocationWidget(this.locationData);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('\n${locationData.name}\n',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          Text('climate: ${locationData.climate}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Surface water: ${locationData.surface_water}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Terrain: ${locationData.terrain}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
        ],
      ),
    );
  }
}
