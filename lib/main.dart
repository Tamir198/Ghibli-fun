import 'package:flutter/material.dart';
import 'package:ghinbli_app/providers/vehicles_providret.dart';
import 'package:provider/provider.dart';


import 'package:ghinbli_app/providers/movie_provider.dart';
import 'package:ghinbli_app/tabs/movies_tab.dart';
import 'package:ghinbli_app/tabs/vehicles_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FilmsProvider()),
        ChangeNotifierProvider(create: (context) => VehiclesProvider()),
      ],
      child: MaterialApp(
          title: 'Ghibli facts',
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.list)),
                  Tab(icon: Icon(Icons.car_repair)),
                  Tab(icon: Icon(Icons.person)),
                  Tab(icon: Icon(Icons.person)),
                  Tab(icon: Icon(Icons.person)),
                ],
              ),
              title: Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: [
                MoviesTab(),
                VehiclesTab(),
                const Icon(Icons.directions_bike),
                const Icon(Icons.directions_bike),
                const Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
