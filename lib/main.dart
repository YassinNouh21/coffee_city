import 'package:coffee_city/presentation/home/home_view.dart';
import 'package:flutter/material.dart';

import 'presentation/resource/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee City',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // onGenerateRoute:  RouteGenerator.getRoute,
      home: const HomeView(),
    );
  }
}