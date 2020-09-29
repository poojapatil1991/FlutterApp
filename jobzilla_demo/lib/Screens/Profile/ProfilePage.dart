import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/SideMenu/JobSearchBar.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.black87,
              tabs: [
                Tab(text: 'Invites',),
                Tab(text: 'Accepted',),
              ],
            ),
          body: TabBarView(
            children: [
              SearchList(),
              SearchList(),
            ],
          ),
        ),
      );
  }
}