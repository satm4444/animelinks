import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  //"https://blackcelebritygossip.net/wp-content/uploads/2019/09/Noragami-Season-Will-It-Happen-Everything-We-Know-So-Far.jpg"
  //"https://blackcelebritygossip.net/wp-content/uploads/2019/09/Noragami-Season-Will-It-Happen-Everything-We-Know-So-Far.jpg"
  "https://cdn.trinikid.com/110060/uploads/21d76fb0-86cf-11e9-adc4-49c7aa99a775_800_420.png",
  'https://rainbowcomixblogs.files.wordpress.com/2019/02/anime-collage.png?w=1120',
  'https://i.pinimg.com/originals/84/ac/68/84ac68170c35263700c1faf8a7a123de.jpg',
  //'https://images.hdqwalls.com/wallpapers/yato-noragami-anime-b2.jpg',
  'https://www.anime-planet.com/images/anime/screenshots/noragami-5656-1.jpg',
  'https://blackcelebritygossip.net/wp-content/uploads/2019/09/Noragami-Season-Will-It-Happen-Everything-We-Know-So-Far.jpg',
  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7d562d2f-b1cf-430b-a066-7813d0891d36/dceojpr-6b1ae9e4-d05f-4608-827f-16a15b65ed36.jpg/v1/fill/w_1024,h_724,q_75,strp/kurosaki_ichigo_vs_ulquiorra_from_bleach_by_marvelmania_dceojpr-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzI0IiwicGF0aCI6IlwvZlwvN2Q1NjJkMmYtYjFjZi00MzBiLWEwNjYtNzgxM2QwODkxZDM2XC9kY2VvanByLTZiMWFlOWU0LWQwNWYtNDYwOC04MjdmLTE2YTE1YjY1ZWQzNi5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.USqAvsXglU9dNkH8MA1l5vIVYaqgxIhF3lwingXF4VI',
  'https://preview.redd.it/fag902x8ups31.png?width=960&crop=smart&auto=webp&s=6e9506d886749521844be8531a45600f3b507bb4',
  //'https://wallpapertag.com/wallpaper/full/e/c/4/626253-cool-one-piece-chibi-wallpaper-2394x1091.jpg',
  //'https://news.otakukart.com/wp-content/uploads/2020/03/One-Piece-Chapter-973-Spoilers.jpg',
];

final Widget placeholder = Container(color: Colors.grey);

final List child = map<Widget>(
  imgList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.network(i, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              // child: Text(
              //   'Solo',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 18.0,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: child,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: map<Widget>(
          imgList,
          (index, url) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4)),
            );
          },
        ),
      ),
    ]);
  }
}
