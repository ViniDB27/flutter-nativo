import 'package:flutter/material.dart';
import 'package:nativo/providers/greate_places.dart';
import 'package:nativo/routes/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus lugares'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: const Center(
          child: Text('Nenhum lugar salvo'),
        ),
        builder: (ctx, greatPlaces,ch) => greatPlaces.itemCount == 0 ? ch! : ListView.builder(
          itemCount: greatPlaces.itemCount,
          itemBuilder: (ctx, i) => ListTile(
            leading: CircleAvatar(
              backgroundImage: FileImage(greatPlaces.items[i].image),
            ),
            title: Text(greatPlaces.items[i].title),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PLACE_DETAIL,
                arguments: greatPlaces.items[i].id,
              );
            },
          ),
        ),
      ),
    );
  }
}
