import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:nativo/models/location.dart';
import 'package:nativo/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemCount {
    return _items.length;
  }

  Place itemByIndex(int index) {
    return _items[index];
  }

  void addPlace(String title, File image) {
    _items.add(
      Place(
        id: Random().nextDouble().toString(),
        title: title,
        image: image,
        location: Location(
          latitude: 0,
          longitude: 0,
        ),
      ),
    );
    notifyListeners();
  }

  void deletePlace(String id) {
    _items.removeWhere((place) => place.id == id);
    notifyListeners();
  }
}
