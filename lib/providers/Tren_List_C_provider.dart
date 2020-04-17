import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';

class ListCTiles with ChangeNotifier {
  List<Tiles> _items = [
    Tiles(
        id: "c1",
        subtitle: "",
        title: "Yu Yu Hakusho",
        description: "My favourite anime",
        imageURL:
            'https://i0.wp.com/wallur.com/wp-content/uploads/2016/12/yyh-background-6.jpg?fit=1920%2C1080'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c2",
        subtitle: "Ichigo Kurosaki",
        title: "Samurai Cham..",
        description: "My favourite anime",
        imageURL:
            'https://static0.cbrimages.com/wordpress/wp-content/uploads/2020/03/samurai-champloo.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c3",
        subtitle: "Ichigo Kurosaki",
        title: "Naruto Shipuden",
        description: "My favourite anime",
        imageURL:
            'https://skypip.com/wp-content/uploads/2017/03/naruto-shippuden-1.jpg'
        //   "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781421569482/naruto-vol-66-9781421569482_hr.jpg"
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c4",
        subtitle: "Ichigo Kurosaki",
        title: "Gurren Lagan",
        description: "My favourite anime",
        imageURL:
            'https://ramenparados.com/wp-content/uploads/2017/07/Gurren-Lagann-anime-680x600.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c5",
        subtitle: "Ichigo Kurosaki",
        title: "FMA Brotherho..",
        description: "My favourite anime",
        imageURL:
            'https://i.pinimg.com/originals/24/31/42/243142339be05b20781b28c4a1b386a1.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c6",
        subtitle: "Ichigo Kurosaki",
        title: "Death Note",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/549281.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c7",
        subtitle: "Ichigo Kurosaki",
        title: "AOT",
        description: "My favourite anime",
        imageURL:
            'https://store-images.s-microsoft.com/image/apps.50874.66805461086998692.cf4edba4-d573-4dc8-9c28-ce2d8147160d.6d5de250-02da-4225-85b2-ba2e5ec41e13?mode=scale&q=90&h=1080&w=1920&format=jpg'
        // 'https://lh3.googleusercontent.com/proxy/owh8OMbKOI1hGj06OPELXfYxKLMOaZB9ney8tTP7o1-FjYA0QZYHXXFYsmXtftU-m5iMoZGTABf210hmKIuGuODtTkB9IvMOY-4o5jsLig'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c8",
        subtitle: "Ichigo Kurosaki",
        title: "Code Geass",
        description: "My favourite anime",
        imageURL:
            'https://c4.wallpaperflare.com/wallpaper/421/105/267/anime-code-geass-c-c-code-geass-lelouch-lamperouge-wallpaper-preview.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "c9",
        subtitle: "Ichigo Kurosaki",
        title: "SAO",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/1122002.jpg'
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
