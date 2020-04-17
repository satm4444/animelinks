import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerticalTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Tiles>(context, listen: false);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 1, top: 1),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  //color: Colors.grey,
                  ),
            ),
            height: 80,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    // height: 20,
                    width: 80,
                    color: Colors.black,
                    child: Image.network(
                      fromModel.imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // height: 20,
                    width: 90,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        fromModel.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                ),
                Container(
                  // height: 20,
                  width: 60,
                  color: Colors.black,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Text(
                        fromModel.description,
                        style: TextStyle(
                            color: Color(0xff4B0082),
                            fontSize: 30,
                            fontFamily: "Vonique"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Color(0xff4B0082),
        )
      ],
    );
  }
}
