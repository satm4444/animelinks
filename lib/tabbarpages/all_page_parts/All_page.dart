import 'package:animelink/providers/All_List_provider.dart';
import 'package:animelink/widgets/gridview_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromAllListprovider = Provider.of<AllListTiles>(
      context,
    );
    final alllistdata = fromAllListprovider.items;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5.3),
      itemCount: alllistdata.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: alllistdata[index],
        child: GridViewTile(),
      ),
    );
  }
}
