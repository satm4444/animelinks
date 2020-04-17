import 'package:animelink/providers/Tren_List_B_provider.dart';
import 'package:animelink/widgets/horizontal_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrenListB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromListBprovider = Provider.of<ListBTiles>(context);
    final listBdata = fromListBprovider.items;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemCount: listBdata.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: listBdata[index],
        child: HorizontalTile(),
      ),
    );
  }
}
