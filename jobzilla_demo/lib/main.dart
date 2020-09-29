import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/Login/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobzilla',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Color.fromARGB(255, 245, 245, 245),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:LoginPage()
    );
  }
}

