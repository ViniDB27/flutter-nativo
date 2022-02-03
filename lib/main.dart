import 'package:flutter/material.dart';
import 'package:nativo/routes/app_routes.dart';
import 'package:nativo/screens/place_form_screen.dart';
import 'package:nativo/screens/places_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber
      ),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}

