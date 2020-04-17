import 'package:animelink/favScreen.dart';
import 'package:animelink/homepageScreen.dart';
import 'package:animelink/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List _pages = [
    HomepageScreen(),
    FavScreen(),
    ProfileScreen(),
  ];
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor:
            //Color(0xffFF0000),
            Color(0xff4B0082),
        // Colors.deepPurple,
        unselectedItemColor:
            //Color(0xffB22222),
            Colors.deepPurple,
        //Color(0xff4B0082),
        onTap: _selectedPage,
        currentIndex: _selectedPageIndex,
        items: <BottomNavigationBarItem>[
          //^^^Items like icon or text for the corresponding Bottom Bar Pages--//
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              size: 19,
            ),
            title: SizedBox(),
            //  Text(
            //   " Home",
            //   style: TextStyle(fontSize: 11),
            // )
            // Container(), //<<<--Could also write null in the place of conatainer--<<
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidHeart,
              size: 18.5,
            ),
            title: SizedBox(),
            // Text(
            //   " Favourite",
            //   style: TextStyle(fontSize: 11),
            // )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidUser,
              size: 18,
            ),
            title: SizedBox(),
            //  Text(
            //   " Search",
            //   style: TextStyle(fontSize: 11),
            // )
            //Container(),
          ),
        ],
      ),
    );
  }
}
