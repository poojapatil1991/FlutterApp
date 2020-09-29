import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/AboutEmployee/AboutEmployee.dart';
import 'package:jobzilla_demo/Screens/CareerProfile/CareerProfileDetails.dart';
import 'package:jobzilla_demo/Screens/Certificate/CertificateDetail.dart';
import 'package:jobzilla_demo/Screens/EducationDetails/EducationDetails.dart';
import 'package:jobzilla_demo/Screens/EmploymentDetails/EmployeementDetails.dart';
import 'package:jobzilla_demo/Screens/Language/LanguageDetails.dart';
import 'package:jobzilla_demo/Screens/PersonalDetails/PersonalDetails.dart';
import 'package:jobzilla_demo/Screens/Skills/SkillsDetails.dart';

class MyProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile"
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child : Padding(
            padding: EdgeInsets.all(10),
        child :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle,size: 70,color: Colors.blueAccent,)]),
              Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          child:Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text("Software Developer at TCS | Mumbai, India")),
                        Row(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child:Row(
                                    children: [
                                      Icon(Icons.phone_android,size: 15,color: Colors.black,),
                                      Text("+91 123456789")])),
                                Padding(
                                  padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child:Row(
                                    children: [
                                      Icon(Icons.mail_outline,size: 15,color: Colors.black,),
                                      Text("  johndoe89@gmail.com"),],)),
                          ],
                        )
                      ],
                )]),
              )
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children : [Text("About",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
              elevation: 8,
              child:Padding(
                padding: EdgeInsets.all(20),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AboutEmployee()),
                            );
                          },
                          child: Icon(Icons.edit,color: Colors.grey,size: 15,))
                      ],
                    ),
                    Text("Sr. Developer with 6 years of experience in software development."
                        " Fluent in english with excellent communication and interpersonal skills."
                        "A fast learner with strong time management and multi-tasking skills"),
                  ],
              ))
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("CTC",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
                elevation: 8,
                child:Padding(
                    padding: EdgeInsets.all(20),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.edit,color: Colors.grey,size: 15,)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Current CTC : ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("INR 8 Lac(s) 24 Thousand")
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Expected CTC : ",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("INR 12 Lac(s) 50 Thousand")
                            ],
                          )),
                      ],
                    ))
                  ),
            Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children : [Text("Resume",style: TextStyle(fontSize: 15),)]),
                ),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children:[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child:Text("Resume.pdf",style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                      Text("Last updated 9 Aug 2020")],
                    )),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child:RaisedButton(
                              disabledColor: Colors.blueAccent,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                              child: Text("Upload",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                            )),
                        Text("max size 50 MB")],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Skills",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10,10,10,0),
                child: Column(
                  children: [
                    SkillDetails(),
                    Divider(
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    SkillDetails(),
                    SizedBox(
                      width:double.infinity,
                      child:
                      RaisedButton(
                          disabledColor: Colors.black12,
                          child: Text("+ ADD SKILLS")),

                    )
                  ],
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Certification",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10,10,10,0),
                child: Column(
                  children: [
                    CertificateDetail(),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    CertificateDetail(),
                   SizedBox(
                      width:double.infinity,
                      child:
                        RaisedButton(
                            disabledColor: Colors.black12,
                            child: Text("+ ADD CERTIFICATE")),

                    )
                  ],
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Employment",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    EmploymentDetails(),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    EmploymentDetails(),
                    SizedBox(
                      width:double.infinity,
                      child:
                      RaisedButton(
                          disabledColor: Colors.black12,
                          child: Text("+ ADD EMPLOYMENT")),

                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Education",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    EducationDetails(),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    EducationDetails(),
                    SizedBox(
                      width:double.infinity,
                      child:
                      RaisedButton(
                          disabledColor: Colors.black12,
                          child: Text("+ ADD EDUCATION")),

                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Languages",style: TextStyle(fontSize: 15),)]),
            ),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    LanguageDetails(),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    LanguageDetails(),
                    SizedBox(
                      width:double.infinity,
                      child:
                      RaisedButton(
                          disabledColor: Colors.black12,
                          child: Text("+ ADD LANGUAGE")),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Personal Details",style: TextStyle(fontSize: 15),)]),
            ),
            PersonalDetails(),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("Desired Career Profile",style: TextStyle(fontSize: 15),)]),
            ),
            CareerProfile(),
          ],
        )))
      );
  }
}