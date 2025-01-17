import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_ui/scrn2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  State createState() => _Screen1State();
}

class _Screen1State extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 247, 248, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 44,
                  bottom: 0
                ),
                child: Image.asset("lib/images/i1.png"),
              ),

              Container(
                margin: EdgeInsets.only(
                  bottom: 30,
                ),
                width: 250,
                alignment: Alignment.center,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enjoy Your" , style: GoogleFonts.poppins(
                      fontSize:34.22,
                      fontWeight:FontWeight.w400,
                      color:Color.fromRGBO(47,47,47,1),
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Life with",
                        style: GoogleFonts.poppins(
                          fontSize:34.22,
                          fontWeight:FontWeight.w400,
                          color:Color.fromRGBO(47,47,47,1),
                        ),
                        ),
                        Text(
                          "Plants",
                          style: GoogleFonts.poppins(
                          fontSize:34.22,
                          fontWeight:FontWeight.w600,
                          color:Color.fromRGBO(1,1,1,1),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen2()));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 14),
                  width: double.infinity,

                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,

                      colors: [ 
                        Color.fromRGBO(124, 180, 70, 1),
                        Color.fromRGBO(62, 102, 24, 1),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0,20),
                        blurRadius: 40,
                        spreadRadius: 0
                      )
                    ]
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.rubik(
                          color:Colors.white,
                          fontSize:16,
                          fontWeight:FontWeight.w500,
                        ),
                      ),

                      const SizedBox(
                        width: 4,

                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                        color: Colors.white,
                      ),
                      

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}