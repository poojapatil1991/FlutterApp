import 'package:flutter/material.dart';

class EmploymentDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.adjust,color: Colors.blueAccent,size: 20,),
      title: Employment(),
      trailing: Icon(Icons.edit,color: Colors.grey,size: 15,),
    );
  }
}

class Employment extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Software Developer",style: TextStyle(fontSize: 15),),
        Text("TCS",style: TextStyle(fontSize: 15)),
        Text("2018 to present",style: TextStyle(fontSize: 12,color: Colors.grey)),
        Text("Sr. Developer with experience in Cloud services.",style: TextStyle(fontSize: 12))
      ],
    );
  }
}