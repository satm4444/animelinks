import 'package:animelink/tabbarpages/all_anime_page.dart';
import 'package:animelink/tabbarpages/top_page.dart';
import 'package:animelink/tabbarpages/trending_page.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Container(),
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
              iconSize: 27,
              color: Color(0xffB22222),
              //color: Color(0xffFF4500)
              // color: Color(0xff4B0082),
            )
          ],
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "AnimeLinks",
              style: TextStyle(
                fontSize: 28,
                fontFamily: "Vonique",
                fontWeight: FontWeight.bold,
                //  color: Color(0xffFF0000),
                //color: Color(0xffB22222),
                color: Color(0xff4B0082),
                //color: Color(0xffFF4500),
              ),
            ),
          ),
          bottom: TabBar(
            // labelPadding: EdgeInsets.symmetric(horizontal: 20),
            unselectedLabelColor: Colors.purple,
            //Colors.purple,
            // indicatorSize: ,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black
                // color: Color(0xff4B0082),
                ),
            tabs: [
              Tab(
                child: Container(
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      // color: Color(0xffB22222),
                      // color: Color(0xffFF4500),
                      color: Color(0xff4B0082),
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "TRENDING",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        //   fontFamily: "Vonique",
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      //color: Color(0xffB22222),
                      // color: Color(0xffFF4500),
                      color: Color(0xff4B0082),
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "ALL",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        //   fontFamily: "Vonique",
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 100,
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      //color: Color(0xffB22222),
                      // color: Color(0xffFF4500),
                      color: Color(0xff4B0082),
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "TOP", //Previous Must see
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        //  fontFamily: "Vonique"
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          TrendingPage(),
          AllAnimePage(),
          TopPage(),
        ]),
      ),
    );
  }
}
