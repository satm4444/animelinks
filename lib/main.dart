import 'package:animelink/Anime_Screen.dart';
import 'package:animelink/BottomBar.dart';

import 'package:animelink/providers/All_List_provider.dart';
import 'package:animelink/providers/Tren_List_A_provider.dart';
import 'package:animelink/providers/Tren_List_B_provider.dart';
import 'package:animelink/providers/Tren_List_C_provider.dart';
import 'package:animelink/providers/Tren_List_D_provider.dart';
import 'package:animelink/providers/Tren_List_E_provider.dart';
import 'package:animelink/providers/top_list_provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of this application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: TopListTiles()),
        ChangeNotifierProvider.value(value: AllListTiles()),
        ChangeNotifierProvider.value(value: ListATiles()),
        ChangeNotifierProvider.value(value: ListBTiles()),
        ChangeNotifierProvider.value(value: ListCTiles()),
        ChangeNotifierProvider.value(value: ListDTiles()),
        ChangeNotifierProvider.value(value: ListETiles()),
      ],
      child: MaterialApp(
        color: Colors.black,
        debugShowCheckedModeBanner: false,
        title: "AnimeLinkApp",
        theme: ThemeData(
          canvasColor: Colors.black,
          //  primarySwatch: Colors.,
        ),
        // home: BottomBar(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => BottomBar(),
          AnimeScreen.routeName: (ctx) => AnimeScreen(),
        },
      ),
    );
  }
}
