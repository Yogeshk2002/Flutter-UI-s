import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Screen3());

class Screen3 extends StatefulWidget {
  State createState() => _Screen3State();
}

class _Screen3State extends State {

  List<Map<String, String>> videoList = [
    {
      "name": "1.Introduction",
      "description": "Understand the fundamental concepts of UI",
    },
    {
      "name": "2.Wireframing and Prototyping",
      "description":
          "Familiarize yourself with tools like Adobe XD, Sketch, or Figma",
    },
    {
      "name": "3.Visual Design Principles",
      "description": "Study design principles such as typography, color theory",
    },
    {
      "name": "4.Interaction Design",
      "description":
          "Gain an understanding of how users interact with digital products ",
    },
    {
      "name": "5.Information Architecture",
      "description": "Learn how to organize and structure information",
    },
    {
      "name": "6.Responsive Design:",
      "description": "Explore techniques for designing interfaces ",
    },
    {
      "name": "7.Portfolio Building",
      "description":
          "Build a strong portfolio showcasing your projects and design skills ",
    },
    {
      "name": "8.Demo Project",
      "description": "Learn From a Project",
    },
    {
      "name": "9.Demo Project ",
      "description": "Learn from a Project",
    }
  ];




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 129, 220),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              )),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 18, 129, 220), Color.fromARGB(255, 11, 6, 158),
          ],
          stops: [0.01, 0.3],
        )),
        child: Column(
          children: [
            //Padding(padding: EdgeInsets.only(left: 30,right: 30)),

            Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Design Thinking the Beginner.",
                  style: GoogleFonts.jost(
                      fontSize: 32.61,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),

            const SizedBox(
              height: 11,
            ),

            Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Advanced guidlines & tips & tricks for how to become a UI-UX designer.",
                  style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),

            const SizedBox(
              height: 31,
            ),

            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 34,
                        width: 34,
                        child: const Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                            color: Colors.red),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Author:",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 219, 163, 163)),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Albert",
                        style: GoogleFonts.jost(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "4.7",
                        style: GoogleFonts.jost(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        "(50 review)",
                        style: GoogleFonts.jost(
                            color: const Color.fromARGB(255, 239, 223, 223),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 32,
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(192, 223, 223, 200),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 30,),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: videoList.length,
                    itemBuilder: (context, index) {

                      Map<String,String> currentVideo = videoList[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                const BoxShadow(
                                    color: Color.fromARGB(87, 40, 31, 31),
                                    blurRadius: 5,
                                    offset: Offset(5, 7))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 46,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 223, 218, 218),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    "lib/icons/youtube.png",
                                  ),
                                ),
                                const SizedBox(
                                  width: 11,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      currentVideo["name"]!,
                                      style: GoogleFonts.jost(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 190,
                                      child: Text(currentVideo["description"]!,
                                          style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
