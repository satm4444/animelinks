import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Favourite Screen",
              style: TextStyle(
                fontSize: 28,
                fontFamily: "Vonique",
                fontWeight: FontWeight.bold,
                color: Color(0xff4B0082),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
