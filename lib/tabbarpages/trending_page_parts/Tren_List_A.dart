import 'package:animelink/providers/Tren_List_A_provider.dart';
import 'package:animelink/widgets/horizontal_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrenListA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromListAprovider = Provider.of<ListATiles>(context);
    final listAdata = fromListAprovider.items;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemCount: listAdata.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: listAdata[index],
        child: HorizontalTile(),
      ),
    );
  }
}
