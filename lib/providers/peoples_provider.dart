import 'package:flutter/cupertino.dart';
import 'package:ghinbli_app/models/people_model.dart';
import 'package:ghinbli_app/network/ghibli_people.dart';

class PeoplesProvider extends ChangeNotifier{

  final Future<List<PeopleModel>> _peoples = GhibliPeople().getPeoples();

  Future<List<PeopleModel>> get peoples{
    return _peoples;
  }
}