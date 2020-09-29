import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5),
                child:Text(
                'Technical Project Manager',
                style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold,),
              )),
              Padding(padding: EdgeInsets.all(5),
                child:Text(
                'Posted Today',
                style: TextStyle(color: Colors.blueAccent,fontSize: 10),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5),
                  child:Icon(Icons.business_center)),
              Padding(padding: EdgeInsets.all(5),
                  child:Text(
                ' 7 - 12 years ',
                style: TextStyle(color: Colors.black54,fontSize: 15),
              )),
              Padding(padding: EdgeInsets.all(5),
                  child:Icon(Icons.account_balance_wallet)),
              Padding(padding: EdgeInsets.all(5),
                  child:Text(
                '12 - 15 lakhs',
                style: TextStyle(color: Colors.blueAccent,fontSize: 15),
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
                  child:Icon(Icons.location_on)),
              Padding(padding: EdgeInsets.all(5),
                  child:Text(
                "Pune, Mumbai",
                style: TextStyle(color: Colors.black54,fontSize: 12),
              ))
            ],
          ),
        ],
      )
    );
  }

}