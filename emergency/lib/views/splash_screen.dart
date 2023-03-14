import 'dart:async';

import 'package:emergency/views/decider.dart';
import 'package:emergency/views/home_view.dart';
import 'package:emergency/views/signup_screen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
      void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          signupscreen()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 75, 16, 102),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("SQuiP", style: TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.bold,),),
          ),
          Center(
            child: Text("Safe And Quick Pakistan",style: TextStyle(fontSize: 15,color: Colors.grey[50]),),
          )
        ],
      ),
    );
  }
}