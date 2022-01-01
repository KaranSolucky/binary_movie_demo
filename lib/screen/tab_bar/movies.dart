import 'package:flutter/material.dart';
import 'package:movieeee/Utils/Dataconstants.dart';
import 'package:movieeee/screen/tab_bar/shows.dart';

import 'package:movieeee/widget/tab_bar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'movie.dart';
import 'music.dart';

class MoviePage extends StatefulWidget {
  final int index;
  MoviePage({Key key, this.index, controller}) {
    tabController = controller;
  }

  @override
  _MoviePageState createState() => _MoviePageState();
}

TabController tabController;

class _MoviePageState extends State<MoviePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    Dataconstants.researchTabController = TabController(vsync: this, length: 3);
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      backgroundColor: Colors.black,
      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.shade500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4D03AQEFUkUKS7oWdQ/profile-displayphoto-shrink_200_200/0/1633238995267?e=1640822400&v=beta&t=8FZ6BuMjiWNZXMxhFWhkWRLaD6WRLuC3M4QvqbfgbBo'),
                    radius: 40.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Development By \n Jha Group Digital',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Solankikaran307@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14.0),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Here you place your menu items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            Divider(height: 3.0),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Close Drawer', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/123.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () => _key.currentState.openEndDrawer(),
                  child: Text(
                    "Priya Video",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[800]),
                  child: Row(children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(
                vertical: 5,
              ),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabBar(
                    physics: CustomTabBarScrollPhysics(),
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.normal),
                    unselectedLabelColor: Colors.grey[600],
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BubbleTabIndicator(
                      indicatorHeight: 35.0,
                      indicatorRadius: 5,
                      indicatorColor: Colors.pink,
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    ),
                    controller: Dataconstants.researchTabController,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          'MOVIES',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'SHOWS',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'MUSIC',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: CustomTabBarScrollPhysics(),
                controller: Dataconstants.researchTabController,
                children: [
                  NewMovie(),
                  ShowsPage(),
                  MusicPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
