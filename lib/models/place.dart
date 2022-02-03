import 'dart:io';

import 'package:nativo/models/location.dart';

class Place {
  final String id;
  final String title;
  final Location location;
  final File iamge;

  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.iamge,
  });
}


