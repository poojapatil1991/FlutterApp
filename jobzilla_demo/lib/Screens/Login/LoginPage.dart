import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/SideMenu/SideMenu.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("JOBZILLA",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30,letterSpacing: 5),),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Welcome back! Please login to your account",style: TextStyle(color: Colors.black26),),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:Card(
                  elevation: 8,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("LOGIN",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),)
                                ])
                        ),
                        Padding(
                            padding:EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: TextField(
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
                                hintText: 'Email id',
                                //labelText: 'Email id'
                              ),
                            )
                        ),
                        Padding(
                            padding:EdgeInsets.fromLTRB(10, 0, 10, 5),
                            child: TextField(
                              obscureText: true,
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
                                hintText: 'Password',
                                //hintStyle: TextStyle(color: Colors.grey),
                                //labelText: 'Password'
                              ),
                            )),
                        Padding(
                            padding:EdgeInsets.fromLTRB(10, 0, 10, 20),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:[
                                  Text("Forget Password",style: TextStyle(fontSize: 13,color: Colors.lightBlueAccent),)
                                ])
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              RaisedButton(
                                textColor: Colors.white,
                                color: Colors.lightBlueAccent,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                                    child:Text(
                                      "Login", style: TextStyle(fontSize: 20),
                                    )),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SideMenu()),
                                  );
                                },
                              )]
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }

}