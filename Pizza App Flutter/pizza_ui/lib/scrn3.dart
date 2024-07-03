import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_ui/scrn2.dart';

class Screen3 extends StatefulWidget {
  State createState() => _Screen3State();
}

class _Screen3State extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Screen2()));
                  },
                  child: const Icon(Icons.arrow_back_ios_new)
                ),
                const SizedBox(
                  width: 85,
                ),
                Text(
                  "Detail Menu",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(218, 26, 50, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 660,
                width: 590,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(85, 85, 85, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  //image: DecorationImage(image: NetworkImage("https://e7.pngegg.com/pngimages/939/682/png-clipart-pizza-hut-logo-symbol-food-mall-promotions-food-logo.png"))
                ),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.15,
                            child: Image.network(
                              "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR38922AVMfQxC0pTrbKa5BLxg8plZdOlDRZLApvw10vLWwXtKs",
                              // fit: BoxFit.cover,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        // Positioned.fill(
                        //   child: Align(
                        //     alignment: Alignment.topCenter,
                        //     // child: Transform.translate(
                        //     //   offset: Offset(0, -180),
                        //     //   // child: Image.network(
                        //     //   //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKl-9s-rE3Phq8Z4_DYbQL4has2OHeczELw&usqp=CAU",
                        //     //   //   width: 100, // Adjust width as needed
                        //     //   //   height: 100, // Adjust height as needed
                        //     //   //   // fit: BoxFit.cover, // Ensure the image fills its container
                        //     //   // ),
                        //     // ),
                        //   ),
                        // ),
                        Positioned.fill(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Image.network(
                                  "https://static.vecteezy.com/system/resources/previews/027/927/248/original/round-pizza-isolated-on-transparent-background-italian-pizza-with-mushroom-toppings-generative-ai-png.png", // Replace with your second image URL
                                  width: 300, // Adjust width as needed
                                  height: 220, // Adjust height as needed
                                ),
                              ),
                              //Text("Hello",style: TextStyle(color: Colors.white),)

                              Column(
                                // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 250,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Super Suprime",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '''Daging Sapi Asap, 
Daging Ayam Asap, 
Burger Sapi, Jamur, 
Nanas, Paprika ''',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                height: 157,
                                                width: 183,
                                                child: Column(
                                                  children: [
                                                    Text("Pilih Crust",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white)),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 182,
                                                      decoration: BoxDecoration(
                                                          color: const Color.fromRGBO(
                                                              40, 40, 40, 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          border: Border.all(
                                                              color: Colors
                                                                  .white)),
                                                      child: Center(
                                                          child: Text(
                                                        "Cheese",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white),
                                                      )),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text("Pilih Crust",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white)),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 182,
                                                      decoration: BoxDecoration(
                                                          color: const Color.fromRGBO(
                                                              40, 40, 40, 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          border: Border.all(
                                                              color: Colors
                                                                  .white)),
                                                      child: Center(
                                                          child: Text(
                                                        "Regular",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white),
                                                      )),
                                                    )
                                                  ],
                                                )),

                                             const SizedBox(height: 25,),

                                            Container(
                                              height: 35,
                                              width: 230,
                                              decoration: BoxDecoration(
                                                  color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                  child: Text(
                                                "Extra cheese(+ Rp.15.555)",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 35,),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 60,
                                          width: 195,
                                          decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                                              color: Colors.black),
                                          child: Center(
                                            child: Text(
                                              "₹. 43.637",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 60,
                                          width: 145,
                                          decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                                              color: Colors.red),
                                          child: Center(
                                              child: Text(
                                            "Order Sekarang",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 16),
                                          )))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
