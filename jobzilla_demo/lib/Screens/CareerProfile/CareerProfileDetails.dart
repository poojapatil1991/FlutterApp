import 'package:flutter/material.dart';

class CareerProfile extends StatelessWidget{

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
                          child: Text("Employment Type",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": Full time",))
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
                          child: Text("Prefered Location",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": Pune, Mumbai",))
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
                          child: Text("Prefered Shift",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: Text(": Day",))
                    ],
                  )
              ),
            ],
          )
      ),
    );
  }
}