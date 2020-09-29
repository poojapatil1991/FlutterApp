import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/AboutApp/about_app.dart';
import 'package:jobzilla_demo/Screens/Home/Home.dart';
import 'package:jobzilla_demo/Screens/MyProfile/MyProfilePage.dart';
import 'package:jobzilla_demo/Screens/Settings/settings.dart';
import 'package:jobzilla_demo/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'DashboardBody.dart';
class SideMenu extends StatefulWidget {
  @override
  _SideMenuPageState createState()=>_SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenu>{
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = Duration(milliseconds: 5);
  DashboardBody dashboardBody = new DashboardBody();

  @override
  Widget build(BuildContext context) {
    Size screenSize= MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: <Widget>[
          getMenu(context),
          getDashboard(context),
        ],
      ),
    );
  }

  Widget getMenu(context){
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.account_circle,size: 75,color: Colors.white,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("John Dove",style: TextStyle(color: Colors.white,fontSize: 15)),
                        Text("Software Developer at",style: TextStyle(color: Colors.white,fontSize: 10)),
                        Text("Tata Consultancy Services",style: TextStyle(color: Colors.white,fontSize: 10)),
                        Text("Pune, India",style: TextStyle(color: Colors.white,fontSize: 10)),
                      ],
                    )
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child:Row(
                children: <Widget>[
                  Text("+91 9096262540 | ", style: TextStyle(color: Colors.white,fontSize: 10)),
                  Text("john.dove@gmail.com", style: TextStyle(color: Colors.white,fontSize: 10)),
                ],
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child:Text("Profile strenght 80%", style: TextStyle(color: Colors.white),)
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                  child:
                      new LinearPercentIndicator(
                        width: 175.0,
                        lineHeight: 8.0,
                        percent: 0.8,
                        progressColor: Colors.green,
                      ),
              ),
            ],
          )),
          InkWell(
          onTap: (){
            setState(() {
              isCollapsed = !isCollapsed;
            });
            dashboardBody.setSelectedTab(0);
          },
          child:Padding(
              padding: EdgeInsets.fromLTRB(20,50,20,20),
              child:Row(
                  children : <Widget>[
                    Icon(Icons.home,color: Colors.white),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                      child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 15,))
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white),
                  ])
          )),
          InkWell(
            onTap: (){
              setState(() {
                isCollapsed = !isCollapsed;
              });
              //dashboardBody.setSelectedTab(1);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfilePage()),
              );
            },
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child:Row(
                    children : <Widget>[
                    Icon(Icons.account_box,color: Colors.white),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                        child: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 15))
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white),
                    ])
          )),
          InkWell(
          onTap: (){
            setState(() {
              isCollapsed = !isCollapsed;
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
          child:Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child:Row(
                children: <Widget>[
                  Icon(Icons.settings,color: Colors.white),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 65, 0),
                    child: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 15))
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white),
            ])
          )),
          InkWell(
          onTap: (){
            setState(() {
              isCollapsed = !isCollapsed;
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutApp()),
            );
          },
          child:Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child:Row(
                  children: <Widget>[
                    Icon(Icons.account_circle,color: Colors.white),
                    Padding(
                      padding:EdgeInsets.fromLTRB(10, 0, 50, 0),
                      child: Text("About App", style: TextStyle(color: Colors.white, fontSize: 15))
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white)
                  ]),
          )),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child:Row(
                children: <Widget>[
                  Icon(Icons.help_outline,color: Colors.white),
                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 90, 0),
                    child:Text( "Help", style: TextStyle(color: Colors.white, fontSize: 15))
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white),
                ])
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child:Row(
                  children: <Widget>[
                  Icon(Icons.exit_to_app,color: Colors.white),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 70, 0),
                    child:Text("Log Out", style: TextStyle(color: Colors.white, fontSize: 15))
                  ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white),
                  ]),
        ),
      ]
    )
    );
  }

  Widget getDashboard(context){
    return AnimatedPositioned(
        duration: duration,
        top: isCollapsed ? 0 : 0.4*screenHeight,
        bottom: 0,
        left: isCollapsed ? 0 : 0.6*screenWidth,
        right: isCollapsed ? 0 : -0.4*screenWidth,
        child:Material(
        elevation: 8,
        color: Colors.white,
        child:Scaffold(
          appBar: AppBar(
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu,color: Colors.black87,),
                onPressed: () {
                  setState(() {
                    isCollapsed = !isCollapsed;
                  });
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text(isCollapsed.toString())));
                },
              );
            }),
            title: Text("JOBZILLA",style: TextStyle(letterSpacing: 5,color: Colors.lightBlueAccent),),
          ),
          body: dashboardBody,
        ),
        ),
    );
  }
}


