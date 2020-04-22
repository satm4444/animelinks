import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimeScreen extends StatefulWidget {
  static const String routeName = '/anime';
  @override
  _AnimeScreenState createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  String selectedTitle;
  String selectedSub;
  String selectedDes;

  String selectedImage;
  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      // set up the button
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Yaahuuu !!"),
        content: Text("Added to favourites ^ ^"),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    final routeArgs = ModalRoute.of(context).settings.arguments as Map;
    selectedTitle = routeArgs['title'];
    selectedSub = routeArgs['subtitle'];
    selectedDes = routeArgs['desc'];
    selectedImage = routeArgs['imag'];
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Color(0xff404040),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            // color: Colors.teal,
            height: 260,
            child: Image.network(
              selectedImage,
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.longArrowAltLeft,
                    color: Colors.white,
                    // color: Color(0xff4B0082),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    // color: Color(0xff4B0082),
                    size: 24,
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                    showAlertDialog(context);
                  },
                ),
              ],
            ),
          ),
          Positioned(
            top: 93,
            left: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Container(
                width: 122,
                height: 160,
                // color: Colors.red,
                child: Image.network(
                  selectedImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 157,
            child: Text(
              selectedTitle,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 145,
            left: 157,
            child: Text(
              selectedSub,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 250,
            //left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    width: 360,
                    // color: Colors.white,
                    //Color(0xff404040),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 15),
                      child: Text(
                        selectedDes,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            //Colors.white.withOpacity(.5),
                            //Color(0xff989898),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width: 19),
                    Text(
                      'Ratings:',
                      style: TextStyle(
                          //   fontFamily: 'Roboto',
                          // color: Colors.grey,
                          color: Colors.black.withOpacity(.5),
                          // color: Color(0xff4B0082),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 18),
                    Text(
                      //'★★★★☆',
                      '⭐ ⭐ ⭐ ⭐ ⭐',
                      style: TextStyle(
                        fontSize: 20,
                        // color: Color(0xff4B0082),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19.0, top: 8, bottom: 8),
                  child: Text(
                    "Available Links ",
                    style: TextStyle(
                        // fontFamily: 'Roboto',
                        // color: Colors.grey,
                        color: Colors.black.withOpacity(.5),
                        // color: Color(0xff4B0082),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 19,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/arrowyes.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 35,
                        width: 110,
                        color: Colors.black.withOpacity(.3),
                        child: Center(
                          child: Text(
                            "LINK 1",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 19,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/arrowyes.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 35,
                        width: 110,
                        color: Colors.black.withOpacity(.3),
                        child: Center(
                          child: Text(
                            "LINK 2",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 19,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/arrowyes.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 35,
                        width: 110,
                        color: Colors.black.withOpacity(.3),
                        child: Center(
                          child: Text(
                            "LINK 3",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 27,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 140,
                        color: Colors.black.withOpacity(.3),
                        //color: Colors.red.withOpacity(0.7),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.report,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Report',
                              style: TextStyle(
                                  color: Colors.red,
                                  // fontFamily: "Roboto",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 140,
                        color: Colors.black.withOpacity(.3),
                        //color: Colors.green.withOpacity(0.7),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 26,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.green[700],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                  // color: Colors.black.withOpacity(0.7),
                                  color: Colors.green[700],
                                  // fontFamily: "Roboto",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
