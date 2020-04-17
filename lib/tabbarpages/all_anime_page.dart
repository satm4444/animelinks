import 'package:animelink/tabbarpages/all_page_parts/All_page.dart';
import 'package:flutter/material.dart';

class AllAnimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  color: Colors.black,
                  height: 1600,
                  width: double.infinity,
                  //color: Colors.orange,
                  child: AllPage(),
                ),
              )
            ],
          ),
        ));
  }
}
