import 'package:animelink/Anime_Screen.dart';
import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HorizontalTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Tiles>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            AnimeScreen.routeName,
            arguments: {
              "title": fromModel.title,
              'desc': fromModel.description,
              "imag": fromModel.imageURL,
              "subtitle": fromModel.subtitle,
            },
          );

          //~~~~~~~MATERIAL PAGE ROUTE~~~~~//
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => AnimeScreen()),
          // );
        },
        child: Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 148,
                child: FadeInImage.assetNetwork(
                  // fadeInDuration: Duration(milliseconds: 20),
                  placeholder: 'assets/loading.jpg',
                  image: fromModel.imageURL,
                  fit: BoxFit.cover,
                ),

                //Image.network(fromModel.imageURL, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      fromModel.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        //fontSize: 13
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 9,
                          width: 9,
                          color: Color(0xffB22222),
                          // color: Color(0xff4B0082),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0, top: 2),
                child: Text(
                  fromModel.subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
