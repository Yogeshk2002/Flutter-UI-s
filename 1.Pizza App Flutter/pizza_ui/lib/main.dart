import 'package:flutter/material.dart';
import 'package:pizza_ui/scrn1.dart';
import 'package:pizza_ui/scrn2.dart';
import 'package:pizza_ui/scrn3.dart';
import 'package:pizza_ui/scrn3a.dart';
import 'package:pizza_ui/scrn4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
