import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';

class ListDTiles with ChangeNotifier {
  List<Tiles> _items = [
    Tiles(
        id: "aa22",
        subtitle: "Kakarot",
        title: "Maou-sama Re..",
        description: "My favourite anime",
        imageURL:
            'https://static.zerochan.net/Maou-sama.Retry%21.full.2787952.png'
        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa23",
        subtitle: "Yatogami",
        title: "Inuyasha",
        description: "My favourite anime",
        imageURL:
            'https://cdn11.bigcommerce.com/s-1vu4fom/images/stencil/1280x1280/products/3096/7633/Inuyasha_1__62723.1561766145.jpg?c=2'
        //  'https://lh3.googleusercontent.com/proxy/SnxonbA-vn43M649qMkcG_TNGJQZQelW9wFX_dU92uB7kKXWlBHi4SUB44JI54zbKO6bk1u4b8R3Yw5kd2kSu-cR38zJdPZmpAS_e0VZJZY'
        //'https://cdn.animenewsnetwork.com/thumbnails/max1000x1500/cms/feature/96112/noragamifestival.jpg'
        //  'https://s3.amazonaws.com/media-us-standrad/wp-content/uploads/2015/11/13030609/9781632361288.jpeg'
        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //   'https://i.pinimg.com/474x/e8/92/12/e892125baafcceb59fd4255bcd0b87ac--fall--anime-life.jpg'
        // 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1513100996l/37469530._SY475_.jpg'
        // 'https://1.bp.blogspot.com/-qShkeAvNFZw/WBnmSGp1uCI/AAAAAAAAD7o/S0K3WkFwwlcj31qeCQwP4biaCaI8Abv2QCLcB/s1600/noragami_poster_by_jipjanus-d9r8kzp.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa24",
        subtitle: "Renton",
        title: "Cells At Work",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/1973625.png'
        //'https://vignette.wikia.nocookie.net/voiceacting/images/2/20/Eureka_7_cover.jpg/revision/latest/scale-to-width-down/340?cb=20120309090010'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa25",
        subtitle: "Getsuga Tenshou",
        title: "The Rising of t..",
        description: "My favourite anime",
        imageURL: 'https://images6.alphacoders.com/991/thumb-1920-991043.jpg'
        //'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Bleachanime.png/220px-Bleachanime.png'
        //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa26",
        subtitle: "Gear 5 when",
        title: "The Devil is a pa.",
        description: "My favourite anime",
        imageURL: 'https://wallpaperaccess.com/full/1258493.jpg'
        //'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Main_characters_of_One_Piece.png/265px-Main_characters_of_One_Piece.png'
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
