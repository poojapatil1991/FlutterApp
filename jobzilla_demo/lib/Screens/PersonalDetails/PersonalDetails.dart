import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.edit,color: Colors.grey,size: 15,)
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Text("Date of birth",style: TextStyle(fontWeight: FontWeight.bold),)),
                    Expanded(
                      flex: 1,
                        child: Text(": 4 May 1992",))
                  ],
                )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": Female",))
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("Address",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": 39 D-wing, Mumbai, Maharashtra 411057",))
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("Marital Status",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": married",))
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("Passport No.",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": Lj12345",))
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("Work Permit",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": India, US H1B",))
                    ],
                  )
              ),
            ],
          )
      ),
    );
  }
}