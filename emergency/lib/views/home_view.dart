import 'package:emergency/views/ambulance.dart';
import 'package:emergency/views/firebrigade.dart';
import 'package:emergency/views/message.dart';
import 'package:emergency/views/police.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
    var size, height, width;
  homepage({super.key});
  

  @override
  Widget build(BuildContext context) {
        size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => police(),
                  ));
            }, child: Text("Police"),style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(width/1.2, 40),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
            ),),
          ),
          SizedBox(height: 20,),
              Center(
                child: ElevatedButton(onPressed: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ambulance(),
                  ));
                }, child: Text("Ambulance"),style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(width/1.2, 40),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                        ),),
              ),
          SizedBox(height: 20,),
              Center(
                child: ElevatedButton(onPressed: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => firebrigade(),
                  ));
                }, child: Text("Fire brigade"),style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(width/1.2, 40),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                        ),),
              ),
        ],
      ),
    );
  }
}