import 'package:flutter/material.dart';

class CertificateDetail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("AWS Certification",style: TextStyle(fontSize: 15)),
      subtitle: Text("AWS | 16 Sep 2017",style: TextStyle(fontSize: 12)),
      trailing: Icon(Icons.edit,color: Colors.grey,size: 15,),
    );
  }
}