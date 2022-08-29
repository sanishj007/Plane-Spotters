import 'package:flutter/material.dart';
import 'package:plane_spotters/pages/lockScreen.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:lockScreen()
    );
  }
}


