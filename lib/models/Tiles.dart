import 'package:flutter/material.dart';

class Tiles with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String imageURL;
  bool isFavourite;

  Tiles(
      {@required this.id,
      @required this.subtitle,
      @required this.title,
      @required this.description,
      @required this.imageURL,
      this.isFavourite = false});
  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
