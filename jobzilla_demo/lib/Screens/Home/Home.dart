import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/SideMenu/DashboardBody.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text("Profile Strength : 80%")]
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: new LinearPercentIndicator(
                  width: 320.0,
                  lineHeight: 8.0,
                  percent: 0.8,
                  progressColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 15, 0, 15),
              child:Text("You need to complete your profile to get better matches")),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Text("Complete",style: TextStyle(color: Colors.lightBlueAccent),)
                      ])),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                    child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Row(
                          children: [
                              Icon(Icons.account_circle,color: Colors.lightBlueAccent,size: 30,),
                            Text("20",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),)
                          ],
                        ),
                        Text("Job Applied",style: TextStyle(color: Colors.black87,fontSize: 13),)
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.account_circle,color: Colors.lightBlueAccent,size: 30,),
                            Text("15",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),)
                          ],
                        ),
                        Text("Selected Interviews",style: TextStyle(color: Colors.black87,fontSize: 13),)
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.thumb_up,color: Colors.lightBlueAccent,size: 30,),
                            Text("2",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),)
                          ],
                        ),
                        Text("Job Offers",style: TextStyle(color: Colors.black87,fontSize: 13),)
                      ],
                    ),
                  ]
                )),
              )
            ],
          ),
        )
      ],
    );
  }

}