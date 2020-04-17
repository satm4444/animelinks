import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Tiles>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 140,
        width: 120,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/loading.jpg',
                image: fromModel.imageURL,
                fit: BoxFit.cover,
              ),

              //Image.network(fromModel.imageURL, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    fromModel.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 11
                        //fontSize: 13
                        ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 3.0, top: 2),
            //   child: Text(
            //     fromModel.subtitle,
            //     style: TextStyle(
            //         fontWeight: FontWeight.w300,
            //         color: Colors.grey,
            //         fontSize: 12),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
