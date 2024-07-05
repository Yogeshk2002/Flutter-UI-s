import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/Login.dart';

void main() => runApp(const MySplashScreen());

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  State createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,MaterialPageRoute(builder: (context) => LoginScreen())
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
         

          Container(
            height: double.infinity,
            width: 500,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),

          Center(
            child: Container(
              height: 850,
              width: 380,
              margin: EdgeInsets.only(top: 10),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 7,
                    blurRadius: 5,
                    color: Colors.red
                  )
                ]
              ),
              
              
            ),
          ),

          Center(
            child: Container(
              height: 650,
              width: 300,
              margin: EdgeInsets.only(top: 10),

              decoration: BoxDecoration(
                shape:  BoxShape.circle,
                color: Color.fromARGB(255, 233, 228, 228),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 7,
                    blurRadius: 5,
                    color: Color.fromARGB(255, 97, 93, 93)
                  )
                ]
              ),
              
              
            ),
          ),

          Center(
            child: Container(
              height: 600,
              width: 230,
              margin: EdgeInsets.only(top: 10),

              decoration: BoxDecoration(
                shape:  BoxShape.circle,
                color: Color.fromARGB(255, 210, 199, 199),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 6,
                    blurRadius: 5,
                    color: Color.fromARGB(255, 97, 93, 93)
                  )
                ]
              ),

              // child: Container(
              //   child: Image.asset("lib/assets/images/splash1-removebg-preview.png"),
              // ),
              
              
            ),
          ),

          Container(
            width: 1300,
            margin: EdgeInsets.only(top: 130),
            child: Image.asset("lib/assets/images/splash1-removebg-preview.png"),
          ),

          Center(
            child: Container(
              height: 200,
              width: 200,
            
              margin: EdgeInsets.only(
                top: 500,
                
              ),
            
              child: Container(
                margin: EdgeInsets.only(
                  top: 80
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text("Welcome",style: GoogleFonts.luxuriousRoman(fontSize:34,fontWeight:FontWeight.bold,color:Colors.white),)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
            child: LinearProgressIndicator(
              color: Color.fromARGB(255, 254, 255, 255),
              backgroundColor: Color.fromRGBO(154, 7, 7, 1),
              minHeight: 6,
              borderRadius: BorderRadius.circular(20),
              
            ),
          )
                  ],
                ),
              ),
            ),
          ),

          
        ],
      )
      ),
    );
  }
}
