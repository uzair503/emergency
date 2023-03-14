import 'dart:async';
import 'package:emergency/views/message.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
    double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _zoomminusfunction(),
          _zoomplusfunction(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                child: ElevatedButton(onPressed: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => message(),
                  ));
                }, child: Text("Fight"),style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(300, 40),   shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                ),),
          ),
          SizedBox(height: 10,),
          Center(
                child: ElevatedButton(onPressed: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => message(),
                  ));
                }, child: Text("Robbery"),style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(300, 40),   shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                ),),
          ),
          SizedBox(height: 10,),
          Center(
                child: ElevatedButton(onPressed: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => message(),
                  ));
                }, child: Text("Harrasement"),style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 75, 16, 102), fixedSize: Size(300, 40),   shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                ),),
          ),
              ],
            ),
        ],
      ),
    );
  }

 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
  }
}


