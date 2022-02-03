import 'package:flutter/cupertino.dart';
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

  void addPlace(Place place) {
    _items.add(place);
    notifyListeners();
  }

  void deletePlace(String id) {
    _items.removeWhere((place) => place.id == id);
    notifyListeners();
  }


}