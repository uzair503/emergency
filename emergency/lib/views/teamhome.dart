import 'package:emergency/views/map.dart';
import 'package:flutter/material.dart';

class teamhome extends StatefulWidget {
  const teamhome({super.key});

  @override
  State<teamhome> createState() => _teamhomeState();
}

class _teamhomeState extends State<teamhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          SizedBox(height: 10,),
           Center(
            child: ElevatedButton(onPressed: (){
            }, child: Text("Robbery!",style: TextStyle(fontSize: 22,color: Colors.black),),style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 90, 228, 10), fixedSize: Size(300, 60),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
            ),),
          ),
          SizedBox(height: 40,),
              Center(
            child: ElevatedButton(onPressed: (){
            }, child: Text("uzair",style: TextStyle(fontSize: 12,color: Colors.white),),style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 77, 3, 64), fixedSize: Size(100, 40),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
            ),),
          ),
          SizedBox(height: 10,),
                Center(
            child: ElevatedButton(onPressed: (){
            }, child: Text("033234656",style: TextStyle(fontSize: 12,color: Colors.white),),style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 77, 3, 64), fixedSize: Size(150, 40),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
            ),),
          ),
          SizedBox(height: 90,),
           Center(
            child: Text("SQuiP", style: TextStyle(fontSize: 70,color: Colors.black,fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height: 50,),
             Center(
            child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => map(),
                  ));
            }, child: Text("Accept",style: TextStyle(fontSize: 22,color: Colors.black),),style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 90, 228, 10), fixedSize: Size(300, 60),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
            ),),
          ),

        ],
      ),
    );
  }
}