import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class map extends StatefulWidget {
  const map({super.key});

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {

  static final CameraPosition _kGooglePlex = const CameraPosition(target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: _kGooglePlex),
    );
  }
}