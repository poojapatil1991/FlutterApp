import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'About App',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Center(
        child: Text(
          "App Version 1.0",
          style: TextStyle(color: Colors.grey),
        )
      )
    );
  }


}