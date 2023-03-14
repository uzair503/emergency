import 'package:emergency/firebase_options.dart';
import 'package:emergency/views/example.dart';
import 'package:emergency/views/home_view.dart';
import 'package:emergency/views/map.dart';
import 'package:emergency/views/passcode_screenn.dart';
import 'package:emergency/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
    );

  }
}
