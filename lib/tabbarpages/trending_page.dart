import 'package:animelink/carousal_anime.dart';
import 'package:animelink/tabbarpages/trending_page_parts/Tren_List_A.dart';
import 'package:animelink/tabbarpages/trending_page_parts/Tren_List_B.dart';
import 'package:animelink/tabbarpages/trending_page_parts/Tren_List_C.dart';
import 'package:animelink/tabbarpages/trending_page_parts/Tren_List_D.dart';

import 'package:flutter/material.dart';

class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselWithIndicator(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 20,
                          width: 7,
                          // color: Color(0xffB22222),
                          color: Color(0xff4B0082),
                        ),
                      ),
                      Text(
                        "  Newest Anime",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: "Vonique",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "more",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      //color: Color(0xffB22222),
                      color: Color(0xff4B0082),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 222,
              width: double.infinity,
              //,color: Colors.grey.shade500,
              color: Colors.black,
              child: TrenListA(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 20,
                          width: 7,
                          //color: Color(0xffB22222),
                          color: Color(0xff4B0082),
                        ),
                      ),
                      Text(
                        "  Recommended",
                        style: TextStyle(
                          fontFamily: 'Roboto',

                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: "Vonique",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "more",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      //color: Color(0xffB22222),
                      color: Color(0xff4B0082),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 222,
              width: double.infinity,
              color: Colors.black,
              child: TrenListB(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 20,
                          width: 7,
                          //color: Color(0xffB22222),
                          color: Color(0xff4B0082),
                        ),
                      ),
                      Text(
                        "  All Time Fav Anime",
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          //   fontFamily: "Vonique",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "more",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      //color: Color(0xffB22222),
                      color: Color(0xff4B0082),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 463,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TrenListC(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // color: Colors.blue,
              width: 400,
              height: 170,
              child: TrenListD(),
            )

            // Text(
            //   "data",
            //   style: TextStyle(color: Colors.white),
            // )
          ],
        ),
      ),
    );
  }
}
