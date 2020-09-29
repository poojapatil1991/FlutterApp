import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/Home/Home.dart';
import 'package:jobzilla_demo/Screens/Profile/ProfilePage.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

import 'JobSearchBar.dart';

class DashboardBody extends StatefulWidget {
  DashboardBody({Key key, this.title}) : super(key: key);

  final String title;

  _DashboardState myDashboardState=new _DashboardState();
  @override
  _DashboardState createState() => myDashboardState;

  void setSelectedTab(int selectedTab){
    myDashboardState.setSelectedTab(selectedTab);
  }
}

class _DashboardState extends State<DashboardBody> with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 3, length:4,vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          labels: [
            "Home","Profile","Job","Search"
          ],
          initialSelectedTab: "Search",
          tabIconColor: Colors.black26,
          tabSelectedColor: Colors.blueAccent,
          onTabItemSelected: (int value){
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [
            Icons.home,Icons.account_circle,Icons.business_center,Icons.search
          ],
          textStyle: TextStyle(color: Colors.blueAccent,fontSize: 10),
        ),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              child: Center(
                child: HomePage(),
              ),
            ),
            Container(
              child: Center(
                child: ProfilePage(),
              ),
            ),
            Container(
              child: Center(
                child: SearchList(),
              ),
            ),
            Container(
              child: Center(
                child:
                SearchList(),
              ),
            ),
          ],
        ));
  }
  void setSelectedTab(int selectedTab){
    setState(() {
      _tabController.index= selectedTab;
    });
  }
}



