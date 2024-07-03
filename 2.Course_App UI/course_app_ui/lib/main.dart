import 'package:course_app/Scrn1.dart';
import 'package:course_app/Scrn2.dart';
import 'package:course_app/Scrn3.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}