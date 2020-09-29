import 'package:flutter/material.dart';

class EducationDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Education(),
      trailing: Icon(Icons.edit,color: Colors.grey,size: 15,),
    );
  }
}

class Education extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Master of Technology (2013-2015)",style: TextStyle(fontSize: 15),),
        Text("Computer Science",style: TextStyle(fontSize: 12,)),
        Text("Pune University",style: TextStyle(fontSize: 12))
      ],
    );
  }
}