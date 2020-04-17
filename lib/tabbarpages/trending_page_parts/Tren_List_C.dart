import 'package:animelink/providers/Tren_List_C_provider.dart';
import 'package:animelink/widgets/gridview_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrenListC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromListCprovider = Provider.of<ListCTiles>(context);
    final listCdata = fromListCprovider.items;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5.3),
      itemCount: listCdata.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: listCdata[index],
        child: GridViewTile(),
      ),
    );
  }
}
