import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';

class AllListTiles with ChangeNotifier {
  List<Tiles> _items = [
    Tiles(
        id: "aa1",
        subtitle: "Getsuga Tenshou",
        title: "Bleach",
        description: "My favourite anime",
        imageURL: 'https://i.ytimg.com/vi/gB0-kpn4U24/maxresdefault.jpg'
        //  'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Bleachanime.png/220px-Bleachanime.png'
        //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa2",
        subtitle: "Gear 5 when",
        title: "One Piece",
        description: "My favourite anime",
        imageURL:
            'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Main_characters_of_One_Piece.png/265px-Main_characters_of_One_Piece.png'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa3",
        subtitle: "Isse is a devil",
        title: "HSchool DxD",
        description: "My favourite anime",
        imageURL:
            'https://honknews.com/wp-content/uploads/2020/02/91gD1HeHAsL._RI_-1200x900-1.jpg'
        //  'https://4.bp.blogspot.com/-6wjH87LItmg/W2Am-NQbPaI/AAAAAAAAANU/-ns2cLlNzFo-BgRhLgCDaMgxF2-c2MzgwCEwYBhgL/s1600/high-school-dxd.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    // Tiles(
    //     id: "aa4",
    //     subtitle: "Kakarot",
    //     title: "Dragon Ball Su..",
    //     description: "My favourite anime",
    //     imageURL:
    //         'https://lh3.googleusercontent.com/proxy/91rYGvjr8kGYL2Gf1F0nLNVQ2A7WrVN9x0JiJivMIX5Wk_PfAN3Dep9MvkmSn85q0jo8ZqjRH64m9VRg8c5CxWoIQSf9KkD-HSgShZgwihPdNkiXcD49XyPEJKn7PdInxbdX9w81x5dWGp7RbIaZQhga'
    //     //  'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
    //     //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    //     ),
    Tiles(
        id: "aa5",
        subtitle: "Yatogami",
        title: "Noragami",
        description: "My favourite anime",
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
        id: "aa6",
        subtitle: "Renton",
        title: "Eureka Seven",
        description: "My favourite anime",
        imageURL:
            'https://i0.wp.com/recommendmeanime.com/wp-content/uploads/2017/01/anime-series-like-eureka-seven.jpg?fit=950%2C647&ssl=1&resize=1280%2C720'
        // 'https://vignette.wikia.nocookie.net/voiceacting/images/2/20/Eureka_7_cover.jpg/revision/latest/scale-to-width-down/340?cb=20120309090010'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa7",
        subtitle: "Getsuga Tenshou",
        title: "Durarara",
        description: "My favourite anime",
        imageURL:
            'https://pm1.narvii.com/6684/ede236b55623ed8b634a04b0e1b179029c95151a_hq.jpg'
        // 'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Bleachanime.png/220px-Bleachanime.png'
        //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa8",
        subtitle: "Gear 5 when",
        title: "Detective Conan",
        description: "My favourite anime",
        imageURL:
            'https://assets.change.org/photos/9/bg/ys/WHBgYSDUMuqOZvw-800x450-noPad.jpg?1527695014'
        // 'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Main_characters_of_One_Piece.png/265px-Main_characters_of_One_Piece.png'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa9",
        subtitle: "Isse is a devil",
        title: "Dororo",
        description: "My favourite anime",
        imageURL:
            'https://c4.wallpaperflare.com/wallpaper/507/655/606/dororo-katana-prosthesis-long-hair-black-hair-hd-wallpaper-preview.jpg'

        //  'https://4.bp.blogspot.com/-6wjH87LItmg/W2Am-NQbPaI/AAAAAAAAANU/-ns2cLlNzFo-BgRhLgCDaMgxF2-c2MzgwCEwYBhgL/s1600/high-school-dxd.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa10",
        subtitle: "Kakarot",
        title: "Demon Slayer",
        description: "My favourite anime",
        imageURL:
            'https://www.moshimoshi-nippon.jp/wp/wp-content/uploads/2020/03/478d8c7218b48d646544654acb608679-1.jpg'

        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa11",
        subtitle: "Yatogami",
        title: "Naruto Shippu..",
        description: "My favourite anime",
        imageURL:
            'https://dg31sz3gwrwan.cloudfront.net/fanart/79824/194081-0-q80.jpg'
        //'https://cdn.animenewsnetwork.com/thumbnails/max1000x1500/cms/feature/96112/noragamifestival.jpg'
        //  'https://s3.amazonaws.com/media-us-standrad/wp-content/uploads/2015/11/13030609/9781632361288.jpeg'
        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //   'https://i.pinimg.com/474x/e8/92/12/e892125baafcceb59fd4255bcd0b87ac--fall--anime-life.jpg'
        // 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1513100996l/37469530._SY475_.jpg'
        // 'https://1.bp.blogspot.com/-qShkeAvNFZw/WBnmSGp1uCI/AAAAAAAAD7o/S0K3WkFwwlcj31qeCQwP4biaCaI8Abv2QCLcB/s1600/noragami_poster_by_jipjanus-d9r8kzp.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa12",
        subtitle: "Renton",
        title: "Dragon Ball Z",
        description: "My favourite anime",
        imageURL: 'https://vistapointe.net/images/dragon-ball-z-4.jpg'
        //'https://vignette.wikia.nocookie.net/voiceacting/images/2/20/Eureka_7_cover.jpg/revision/latest/scale-to-width-down/340?cb=20120309090010'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa13",
        subtitle: "Getsuga Tenshou",
        title: "Kill La Kill",
        description: "My favourite anime",
        imageURL: 'https://vistapointe.net/images/kill-la-kill-4.jpg'
        //'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Bleachanime.png/220px-Bleachanime.png'
        //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa14",
        subtitle: "Gear 5 when",
        title: "Psycho Pass",
        description: "My favourite anime",
        imageURL:
            'https://wallup.net/wp-content/uploads/2016/07/23/71190-Psycho-Pass-Shinya_Kogami-Tsunemori_Akane-anime.jpg'
        //'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Main_characters_of_One_Piece.png/265px-Main_characters_of_One_Piece.png'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa15",
        subtitle: "Isse is a devil",
        title: "Bleach",
        description: "My favourite anime",
        imageURL:
            'https://2.bp.blogspot.com/-Bww06B9LdvQ/TWNSRCLUYUI/AAAAAAAAFSY/5QLnKm3PL1s/s1600/bleach%2Bwallpaper%2B2.jpg'
        //'https://4.bp.blogspot.com/-6wjH87LItmg/W2Am-NQbPaI/AAAAAAAAANU/-ns2cLlNzFo-BgRhLgCDaMgxF2-c2MzgwCEwYBhgL/s1600/high-school-dxd.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa16",
        subtitle: "Kakarot",
        title: "Hunter X Hunter",
        description: "My favourite anime",
        imageURL: 'https://images.alphacoders.com/560/thumb-1920-560960.png'
        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa17",
        subtitle: "Yatogami",
        title: "Noragami",
        description: "My favourite anime",
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
        id: "aa18",
        subtitle: "Renton",
        title: "Baki The Grapler",
        description: "My favourite anime",
        imageURL: 'https://i.ytimg.com/vi/bTMMdMVFRWE/maxresdefault.jpg'
        // 'https://vignette.wikia.nocookie.net/voiceacting/images/2/20/Eureka_7_cover.jpg/revision/latest/scale-to-width-down/340?cb=20120309090010'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa19",
        subtitle: "Getsuga Tenshou",
        title: "SAO",
        description: "My favourite anime",
        imageURL:
            'https://i.pinimg.com/originals/47/77/bc/4777bc26067bc7eb94715f1b9624f647.png'
        //'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Bleachanime.png/220px-Bleachanime.png'
        //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa20",
        subtitle: "Gear 5 when",
        title: "One Piece",
        description: "My favourite anime",
        imageURL:
            'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Main_characters_of_One_Piece.png/265px-Main_characters_of_One_Piece.png'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa21",
        subtitle: "Isse is a devil",
        title: "Jojo's Bizarre A.",
        description: "My favourite anime",
        imageURL:
            'https://p4.wallpaperbetter.com/wallpaper/847/791/635/anime-jojo-s-bizarre-adventure-wallpaper-preview.jpg'
        //'https://4.bp.blogspot.com/-6wjH87LItmg/W2Am-NQbPaI/AAAAAAAAANU/-ns2cLlNzFo-BgRhLgCDaMgxF2-c2MzgwCEwYBhgL/s1600/high-school-dxd.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
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
    Tiles(
        id: "aa27",
        subtitle: "Isse is a devil",
        title: "Akame Ga Kill",
        description: "My favourite anime",
        imageURL:
            'https://www.wallpaperflare.com/static/658/441/281/akame-ga-kill-leone-sheele-akame-wallpaper.jpg'
        //'https://4.bp.blogspot.com/-6wjH87LItmg/W2Am-NQbPaI/AAAAAAAAANU/-ns2cLlNzFo-BgRhLgCDaMgxF2-c2MzgwCEwYBhgL/s1600/high-school-dxd.jpg'
        //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    // Tiles(
    //     id: "aa28",
    //     subtitle: "Kakarot",
    //     title: "Dragon Ball GT",
    //     description: "My favourite anime",
    //     imageURL:
    //         'https://lh3.googleusercontent.com/proxy/AJqWWTgC_nJdIzdTvVFZ-ByCACtn2t6M2ZdbT81e5QfN1gXj5E0xhG9oIHpbI9lA9MgL9ZszBMXnNYk7uKEaZZbm4BE9yOP4GOfHNabCiho'
    //     // 'https://pm1.narvii.com/5844/6b62462f0e4d0cddbe023e206c8e5d39caee6c88_hq.jpg'
    //     //  'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
    //     //  'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
    //     ),
    Tiles(
        id: "aa29",
        subtitle: "Yatogami",
        title: "Tower of god",
        description: "My favourite anime",
        imageURL:
            'https://img.over-blog-kiwi.com/4/60/33/57/20200401/ob_7d1d8a_2020-02-28-09-23-boundingintocomics-5e.png'
        // 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7d/Tower_of_God_Volume_1_Cover.jpg/220px-Tower_of_God_Volume_1_Cover.jpg'
        // 'https://cdn.animenewsnetwork.com/thumbnails/max1000x1500/cms/feature/96112/noragamifestival.jpg'
        //  'https://s3.amazonaws.com/media-us-standrad/wp-content/uploads/2015/11/13030609/9781632361288.jpeg'
        //'https://gpstatic.com/acache/42/53/1/uk/packshot-4b9dbc037fdefb627fb9010108290f55.jpg'
        //   'https://i.pinimg.com/474x/e8/92/12/e892125baafcceb59fd4255bcd0b87ac--fall--anime-life.jpg'
        // 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1513100996l/37469530._SY475_.jpg'
        // 'https://1.bp.blogspot.com/-qShkeAvNFZw/WBnmSGp1uCI/AAAAAAAAD7o/S0K3WkFwwlcj31qeCQwP4biaCaI8Abv2QCLcB/s1600/noragami_poster_by_jipjanus-d9r8kzp.jpg'
        // 'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
        ),
    Tiles(
        id: "aa30",
        subtitle: "Renton",
        title: "OverLord",
        description: "My favourite anime",
        imageURL:
            'https://1.bp.blogspot.com/-bSCHbL5fMqQ/XHcgH0hEBQI/AAAAAAABnlc/YLkyXrijnCA1n8TxZazLWoERfKVMbZx5QCLcBGAs/s400/lac-vao-the-gioi-game-3-overlord-ss34.jpg'
        //  'https://vignette.wikia.nocookie.net/voiceacting/images/2/20/Eureka_7_cover.jpg/revision/latest/scale-to-width-down/340?cb=20120309090010'
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
