import 'package:expnse_manager/createAccount.dart';
import 'package:flutter/material.dart';

class MySpalshScreen extends StatefulWidget {
  const MySpalshScreen({super.key});

  @override
  State createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySpalshScreen> {
  void initState() {
      super.initState();
      _navigatetohome();
    }

    _navigatetohome() async {
      await Future.delayed(Duration(milliseconds: 3000),(){});
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AccountCreate())
      );
    }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: 144,
                width: 144,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 241, 235, 235),
                ),
                child: Image.asset("lib/assets/images/image1.png"),
              ),
            ),
          ),
          Container( // Container for text at bottom center
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 40.0),
            child: Text(
              "Expense Manager",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
