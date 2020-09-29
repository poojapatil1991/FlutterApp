import 'package:flutter/material.dart';

class AboutEmployee extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add About"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
        children : [
          Card(
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text("Profile Summary",style: TextStyle(color: Colors.grey),)),
                  TextField(
                    maxLines: 5,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Add about yourself...',
                      //labelText: 'Email id'
                    ),
                  ),

              ],
            ),
          )

        ),
        Expanded(
            flex: 1,
            child :Align(
              alignment: FractionalOffset.bottomCenter,
                child:RaisedButton(
                  disabledColor: Colors.blueAccent,
                  child: Text(
                    "Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
            )))
        ],
      )),
    );

  }
}