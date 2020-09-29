import 'package:flutter/material.dart';

class SkillDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Java v 6.0",style: TextStyle(fontSize: 15)),
      subtitle: Text("Expert 5 years",style: TextStyle(fontSize: 12)),
      trailing: Icon(Icons.edit,color: Colors.grey,size: 15,),
    );
  }

}