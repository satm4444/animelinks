import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';

class TopListTiles with ChangeNotifier {
  List<Tiles> _items = [
    Tiles(
        id: "z1",
        subtitle: "Getsuga",
        title: "Bleach",
        description: "1",
        imageURL:
            'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Bleachanime.png/220px-Bleachanime.png'
        //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "z2",
        subtitle: "Gear 5 when",
        title: "One Piece",
        description: "2",
        imageURL:
            'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Main_characters_of_One_Piece.png/265px-Main_characters_of_One_Piece.png'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "z3",
        subtitle: "Isse is a devil",
        title: "High School",
        description: "3",
        imageURL:
            'https://4.bp.blogspot.com/-6wjH87LItmg/W2Am-NQbPaI/AAAAAAAAANU/-ns2cLlNzFo-BgRhLgCDaMgxF2-c2MzgwCEwYBhgL/s1600/high-school-dxd.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "z4",
        subtitle: "Kakarot",
        title: "DBZ",
        description: "4",
        imageURL:
            'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "z5",
        subtitle: "Yatogami",
        title: "Noragami",
        description: "5",
        imageURL:
            'https://cdn.animenewsnetwork.com/thumbnails/max1000x1500/cms/feature/96112/noragamifestival.jpg'
        //  'https://s3.amazonaws.com/media-us-standrad/wp-content/uploads/2015/11/13030609/9781632361288.jpeg'
        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //   'https://i.pinimg.com/474x/e8/92/12/e892125baafcceb59fd4255bcd0b87ac--fall--anime-life.jpg'
        // 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1513100996l/37469530._SY475_.jpg'
        // 'https://1.bp.blogspot.com/-qShkeAvNFZw/WBnmSGp1uCI/AAAAAAAAD7o/S0K3WkFwwlcj31qeCQwP4biaCaI8Abv2QCLcB/s1600/noragami_poster_by_jipjanus-d9r8kzp.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "z6",
        subtitle: "Renton",
        title: "Eureka Sev.",
        description: "6",
        imageURL:
            'https://vignette.wikia.nocookie.net/voiceacting/images/2/20/Eureka_7_cover.jpg/revision/latest/scale-to-width-down/340?cb=20120309090010'
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
