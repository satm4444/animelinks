import 'package:animelink/models/Tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManualCarousal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Tiles>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 11),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          //height: 150,
          width: 350,
          color: Colors.grey.shade500,
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/loading.jpg',
            image: fromModel.imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
