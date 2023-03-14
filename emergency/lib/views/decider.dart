import 'package:emergency/views/passcode_screenn.dart';
import 'package:emergency/views/teamhome.dart';
import 'package:flutter/material.dart';
import 'package:passcode_screen/passcode_screen.dart';

class decider extends StatelessWidget {
    var size, height, width;
  decider ({super.key});
  

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
                    builder: (context) => teamhome(),
                  ));
            }, child: Text("App Team"),style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(width/1.2, 40),   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
            ),),
          ),
          SizedBox(height: 20,),
              Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
        context, MaterialPageRoute(builder: (context) => PasscodeScreen2(title: Text("Welcome we are here to help",style: TextStyle(color: Colors.white),), passwordEnteredCallback: (text) {
      },  cancelButton: IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)) , deleteButton: IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)) , shouldTriggerVerification: Stream.empty() ),)
      );
                }, child: Text("Help Seeker"),style: ElevatedButton.styleFrom(
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