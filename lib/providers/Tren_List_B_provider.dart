import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';

class ListBTiles with ChangeNotifier {
  List<Tiles> _items = [
    Tiles(
        id: "b1",
        subtitle: "Kageyama Sama",
        title: "Mob Psycho",
        description: "My favourite anime",
        imageURL:
            'https://pm1.narvii.com/6917/4222b65b8c3faa577a775291126fa0a2792eb55fr1-1402-2048v2_uhq.jpg'
        // 'https://i.pinimg.com/originals/fa/c4/ce/fac4ce06c0df101cccbd6d0ae7fd3e4c.jpg',
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "b2",
        subtitle: "Dont break",
        title: "My hero Ac.",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/693439.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "b3",
        subtitle: "CapeBaldy",
        title: "OnePunch",
        description: "My favourite anime",
        imageURL:
            'https://images-na.ssl-images-amazon.com/images/I/818JMX9eoLL._SY445_.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "b4",
        subtitle: "I Love Foxes",
        title: "Naruto",
        description: "My favourite anime",
        imageURL:
            'https://vignette.wikia.nocookie.net/disneythehunchbackofnotredame/images/8/89/Naruto_%28Anime%29.jpg/revision/latest?cb=20150828230856'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "b5",
        subtitle: "Is he A Dragon",
        title: "Fairy Tail",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/31260.png'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "b6",
        subtitle: "Flame Kiser",
        title: "Idaten Jump",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/31260.png'
        // 'https://lh3.googleusercontent.com/proxy/YoOBhSPfHk--xA4jLPP0AxWAUVeC1dTf4uZO1LJiHD11Aq5AkQieE5cxnbmx2M4GrOxDAZ_ZgQecfpmtR79P5BCA433Ry0Uz1SmV17oE'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "b7",
        subtitle: "Kaneki-Ken",
        title: "Tokyo Ghoul",
        description: "My favourite anime",
        imageURL:
            'https://images.wallpapersden.com/image/download/ken-kaneki-tokyo-ghoul-art_67336_2560x1440.jpg'
        // 'https://lh3.googleusercontent.com/proxy/YoOBhSPfHk--xA4jLPP0AxWAUVeC1dTf4uZO1LJiHD11Aq5AkQieE5cxnbmx2M4GrOxDAZ_ZgQecfpmtR79P5BCA433Ry0Uz1SmV17oE'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
  ];

  List<Tiles> get items {
    return [..._items];
  }

  Tiles findById(String id) {
    return _items.firstWhere((tile) => tile.id == id);
  }
}
