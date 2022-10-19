import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 105, 231, 240),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            padding: EdgeInsets.only(left: 15.0,right: 15.0,top:190.0,bottom: 190.0 ),
            margin: EdgeInsets.all(10.0),
            color: Color.fromARGB(255, 95, 209, 238),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/5558237/pexels-photo-5558237.jpeg"),
                ),
                SizedBox(height: 50.0,),

                Card(
                  child: ListTile(
                    title: Text("Email address"),
                    subtitle: Container(
                      child: Row(
                        children: [
                        Icon(Icons.mail_outline_outlined,color: Colors.black,),
                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text("Useranme@gmail.com",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),),
                        )
                      ],),
                    ),
                  ),
                ),
              SizedBox(height: 15.0,),
                Card(
                  child: ListTile(
                    title: Text("Password"),
                    subtitle: Container(
                      child: Row(children: [
                        Icon(Icons.lock_outline_rounded,
                        color: Colors.black),
                        Container(
                          padding: EdgeInsets.only(left: 5.0,right: 180.0),
                          child: Text("*************",
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold),),
                        ),
                        Icon(Icons.remove_red_eye_outlined,
                        color: Colors.black),
                      ],),
                    ),
                      
                      ),
                  ),
              
              ElevatedButton(
                
                  onPressed:() {
                  print("botton",);
                }, child: Text("Login",style: TextStyle(
                  fontSize: 25.0,
                ),),
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Signup"),
                  Text("Forgot Password"),
                ],
              )


              ],
            ),
          )
        ]) ,

      ),
    );
  }
}