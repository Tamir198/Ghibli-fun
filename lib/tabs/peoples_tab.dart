import 'package:flutter/material.dart';
import 'package:ghinbli_app/models/people_model.dart';
import 'package:ghinbli_app/providers/peoples_provider.dart';
import 'package:ghinbli_app/widgets/peopleWidget.dart';
import 'package:provider/provider.dart';

class PeopleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
          future: Provider.of<PeoplesProvider>(context, listen: false).peoples,
          builder: (context, AsyncSnapshot<List<PeopleModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Center(child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return peopleWidgetFromSnapshot(snapshot,index);
                  }));
            }
          });
  }

  // ignore: lines_longer_than_80_chars, non_constant_identifier_names
  PeopleWidget peopleWidgetFromSnapshot(AsyncSnapshot<List<PeopleModel>> snapshot, int index){
    PeopleModel snap = snapshot.data[index];
    snap ??= PeopleModel();
    return PeopleWidget(snap);
  }

}
