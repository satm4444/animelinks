import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';

class ListETiles with ChangeNotifier {
  List<Tiles> _items = [
    Tiles(
      id: "e1",
      subtitle: "Ichigo Kurosaki",
      title: "Bleach",
      description: "My favourite anime",
      imageURL:
          'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    ),
    Tiles(
      id: "e2",
      subtitle: "Ichigo Kurosaki",
      title: "Bleach",
      description: "My favourite anime",
      imageURL:
          'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    ),
    Tiles(
      id: "e3",
      subtitle: "Ichigo Kurosaki",
      title: "Bleach",
      description: "My favourite anime",
      imageURL:
          'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    ),
    Tiles(
      id: "e4",
      subtitle: "Ichigo Kurosaki",
      title: "Bleach",
      description: "My favourite anime",
      imageURL:
          'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    ),
    Tiles(
      id: "e5",
      subtitle: "Ichigo Kurosaki",
      title: "Bleach",
      description: "My favourite anime",
      imageURL:
          'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    ),
    Tiles(
      id: "e6",
      subtitle: "Ichigo Kurosaki",
      title: "Bleach",
      description: "My favourite anime",
      imageURL:
          'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    ),
  ];

  List<Tiles> get items {
    return [..._items];
  }

  Tiles findById(String id) {
    return _items.firstWhere((tile) => tile.id == id);
  }
}
