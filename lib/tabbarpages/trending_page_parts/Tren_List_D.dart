import 'package:animelink/providers/Tren_List_D_provider.dart';

import 'package:animelink/widgets/manual_carousal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrenListD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromListDprovider = Provider.of<ListDTiles>(context);
    final listDdata = fromListDprovider.items;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemCount: listDdata.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: listDdata[index],
        child: ManualCarousal(),
      ),
    );
  }
}
