import 'package:animelink/providers/top_list_provider.dart';
import 'package:animelink/widgets/vertical_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromTopListprovider = Provider.of<TopListTiles>(context);
    final toplistdata = fromTopListprovider.items;
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemCount: toplistdata.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: toplistdata[index],
        child: VerticalTile(),
      ),
    );
  }
}
