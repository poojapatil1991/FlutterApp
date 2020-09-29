import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(
            'Settings',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        body: Center(
            child: Text(
            "This is settings page",
            style: TextStyle(color: Colors.grey),
          )
        )
    );
  }

}