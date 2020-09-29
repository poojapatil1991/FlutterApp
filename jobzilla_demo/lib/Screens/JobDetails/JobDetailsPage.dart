import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Technical Project Manager",style: TextStyle(color: Colors.black87,fontSize: 20),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Posted today",style: TextStyle(color: Colors.blueAccent),)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(5),
                            child:Icon(Icons.business_center,color: Colors.blueAccent,),),
                        Padding(padding: EdgeInsets.all(5),
                            child:Text(
                              ' 7 - 12 years ',
                              style: TextStyle(color: Colors.black54),
                            )),
                        Padding(padding: EdgeInsets.all(5),
                            child:Icon(Icons.account_balance_wallet,color: Colors.blueAccent)),
                        Padding(padding: EdgeInsets.all(5),
                            child:Text(
                              '12 - 15 lakhs',
                              style: TextStyle(color: Colors.black54),
                            )),
                      ],
                    ),
                    Row(
                        children:<Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(8, 5, 5, 5),
                              child:Text(
                                "Skills : Project Manager",
                                style: TextStyle(color: Colors.black54,fontSize: 12),
                              )),]),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(5),
                            child:Icon(Icons.location_on,color: Colors.blueAccent,)),
                        Padding(padding: EdgeInsets.all(5),
                            child:Text(
                              "Pune, Mumbai",
                              style: TextStyle(color: Colors.black54,fontSize: 12),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child:Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child:Text("Job Description",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,),)),
                      Text("1. Will be required to work closely with the Mobile Project Management Team, "
                          "internal IT departments and other cross functional team..."),
                      Text("2. Will be required to work closely with the Mobile Project Management Team, "
                          "internal IT departments and other cross functional team..."),
                      Text("3. Will be required to work closely with the Mobile Project Management Team, "
                          "internal IT departments and other cross functional team..."),
                    ],
                  ),
              )
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  disabledColor:  Colors.blueAccent,
                  focusColor: Colors.lightBlue,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(""
                        "ACCEPT",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ),
                RaisedButton(
                  disabledColor: Colors.blueAccent,
                  focusColor: Colors.lightBlue,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(""
                        "DECLINE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )
           ]
      ),
    ));
  }
}