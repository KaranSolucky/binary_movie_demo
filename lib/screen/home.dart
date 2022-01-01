import 'package:flutter/material.dart';
import 'package:movieeee/Utils/Dataconstants.dart';
import 'package:movieeee/screen/bookmark.dart';
import 'package:movieeee/screen/favPage.dart';
import 'package:movieeee/screen/movies.dart';
import 'package:movieeee/screen/music.dart';
import 'package:movieeee/screen/shows.dart';

import 'menu.dart';

class NewDash extends StatefulWidget {
  const NewDash({Key key}) : super(key: key);

  @override
  _NewDashState createState() => _NewDashState();
}

class _NewDashState extends State<NewDash> with SingleTickerProviderStateMixin {
  int _index = 0, _currentAlertIndex = 0;
  static List<Widget> _pages;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();

    Dataconstants.apiResponse.movie();
    Dataconstants.researchTabController = TabController(vsync: this, length: 3);
    print("test");

    _pages = <Widget>[
      MoviePage(),
      Favourite(),
      BookMark(),
      Menu(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      key: _scaffoldKey,
      body: _pages.elementAt(Dataconstants.mainScreenIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[800],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.pink,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            label: '',
          ),
        ],
        currentIndex: Dataconstants.mainScreenIndex,
        onTap: (index) {
          setState(() {
            Dataconstants.mainScreenIndex = index;
          });
        },
      ),
    );
  }
}
