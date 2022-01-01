import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:movieeee/Utils/Dataconstants.dart';
import 'package:movieeee/screen/shows.dart';
import 'package:movieeee/widget/tab_bar.dart';

import 'movie.dart';
import 'movies.dart';
import 'music.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _index = 0, _currentAlertIndex = 0;
  static List<Widget> _pages;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    Dataconstants.apiResponse.movie();
    Dataconstants.researchTabController = TabController(vsync: this, length: 3);
    print("test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4D03AQEFUkUKS7oWdQ/profile-displayphoto-shrink_200_200/0/1633238995267?e=1640822400&v=beta&t=8FZ6BuMjiWNZXMxhFWhkWRLaD6WRLuC3M4QvqbfgbBo'),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Karan Solanki",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
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
