import 'package:flutter/material.dart';

class AnimeScreen extends StatefulWidget {
  static const String routeName = '/anime';
  @override
  _AnimeScreenState createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  String selectedTitle;
  String selectedSub;
  String selectedDes;
  String selectedImage;
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map;
    selectedTitle = routeArgs['title'];
    selectedSub = routeArgs['subtitle'];
    selectedDes = routeArgs['desc'];
    selectedImage = routeArgs['imag'];
    return Scaffold();
  }
}
