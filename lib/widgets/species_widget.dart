import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/species_model.dart';

class SpeciesWidget extends StatelessWidget {

  SpeciesModel speciesData;
  SpeciesWidget(this.speciesData);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('\n${speciesData.name}\n',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          Text('${speciesData.classification}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Hair color: ${speciesData.hair_colors}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Eye color: ${speciesData.eye_colors}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
        ],
      ),
    );
  }
}