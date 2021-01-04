import 'package:flutter/material.dart';
import 'package:ghinbli_app/tabs/movies_tab.dart';
import 'package:ghinbli_app/tabs/vehicles_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ghibli facts',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.list)),
                Tab(icon: Icon(Icons.car_repair)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              MoviesTab(),
              VehiclesTab(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
