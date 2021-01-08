import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/people_model.dart';

class PeopleWidget extends StatelessWidget {

  PeopleModel peopleData;
  PeopleWidget(this.peopleData);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('\n${peopleData.name}\n',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
          Text('${peopleData.gender}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Hair color: ${peopleData.hair_color}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Eye color: ${peopleData.eye_color}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900)),
          Text('Age: ${peopleData.age}\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900))
        ],
      ),
    );
  }
}
