import 'package:course_app/Scrn2.dart';
import 'package:course_app/Scrn3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Screen1());

class Screen1 extends StatefulWidget {
  State createState() => _Screen1State();
}

class _Screen1State extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 229, 202, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(211, 229, 202, 1),
        leading: const Padding(
          padding: EdgeInsets.all(20),
          child: Icon(Icons.menu_outlined),
        ),
        actions: [const Padding(
          padding: EdgeInsets.all(20),
          child: Icon(Icons.notifications_active_outlined,),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Welcome to New",
                style: GoogleFonts.jost(
                    // color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Educourses",
                style:
                    GoogleFonts.jost(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 365,
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      color: Colors.white,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(28.5)),
                  child: Container(
                    height: 57,
                    
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        
                        decoration: InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                             border: InputBorder.none,         
                            hintText: "Enter your Keyword",
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right:15),
                              child: Icon(Icons.search),
                            )),
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20, top: 33),
                      child: Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder:(context) => Screen2()));
                            },
                            child: Container(
                              // padding: EdgeInsets.only(left: 20),
                              // height: 290,
                              width: 242,
                            
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 199, 39, 143),
                                      Color.fromARGB(255, 90, 2, 80)
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "UX Designer from Scratch.",
                                      style: GoogleFonts.jost(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                    Container(
                                      height: 190,
                                      width: 120,
                                      child: Image.asset("lib/icons/learning1.png"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap:() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen3()));
                            },
                            child: Container(
                              // padding: EdgeInsets.only(left: 20),
                              // height: 290,
                              width: 242,
                            
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      
                                      Color.fromARGB(255, 18, 129, 220),
                                      Color.fromARGB(255, 11, 6, 158),
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Design Thinking the Beginner.",
                                      style: GoogleFonts.jost(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                    Container(
                                      height: 190,
                                      width: 120,
                                      child: Image.asset("lib/icons/learning.png")
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      // height: 100,
                      decoration: const BoxDecoration(
                          //  color: Colors.black
                          ),
                      child: Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      // height: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: const Icon(Icons.computer_outlined,color: Colors.white,size: 30,),
                                ),
                                const SizedBox(height: 3,),
                                Text("UI/UX",style: GoogleFonts.jost(fontSize:12),),

                                const SizedBox(width: 20,),
                                
                              ],
                            ),
                          const SizedBox(width: 55,),

                            Column(
                              children: [
                                
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration:
                                      BoxDecoration(color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                      
                                  child: const Icon(
                                    Icons.view_carousel_sharp,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "VISUAL",
                                  style: GoogleFonts.jost(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),

                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration:
                                      BoxDecoration(color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Icon(
                                    Icons.dangerous_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "ILLUSTRATIC",
                                  style: GoogleFonts.jost(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration:
                                      BoxDecoration(color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Icon(
                                    Icons.photo_album_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "PHOTO",
                                  style: GoogleFonts.jost(fontSize: 12),
                                ),
                                
                              ],
                            ),
                          
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
