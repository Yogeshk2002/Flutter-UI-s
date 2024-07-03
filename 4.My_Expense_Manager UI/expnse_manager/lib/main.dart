import 'package:expnse_manager/Categories.dart';
import 'package:expnse_manager/SplashScreen.dart';
import 'package:expnse_manager/addTransaction.dart';
import 'package:expnse_manager/createAccount.dart';
import 'package:expnse_manager/graph.dart';
import 'package:expnse_manager/login.dart';
import 'package:expnse_manager/trash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MySpalshScreen(),
    );
  }
}