import 'package:flutter/material.dart';

class LanguageDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Language(),
      trailing: Icon(Icons.edit,color: Colors.grey,size: 15,),
    );
  }
}

class Language extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("English",style: TextStyle(fontSize: 15),),
        Text("Read, Write, Speak",style: TextStyle(fontSize: 12))
      ],
    );
  }
}