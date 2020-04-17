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
                    color: Color(0xff4B0082),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Color(0xff4B0082),
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
            top: 90,
            left: 20,
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
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 250,
            //left: 20,
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 90,
                  width: 375.5,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedDes,
                      style: TextStyle(
                          color: Colors.grey,
                          //Color(0xff989898),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    '4.8',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    'Ratings',
                    style: TextStyle(
                        color: Color(0xff989898),
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
