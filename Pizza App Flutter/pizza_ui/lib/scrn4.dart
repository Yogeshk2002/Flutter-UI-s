import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_ui/scrn2.dart';

class Screen4 extends StatefulWidget {
  State createState() => _Screen4State();
}

class _Screen4State extends State {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 2,
        ),
        
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Screen2()));
                    },
                    child: const Icon(Icons.arrow_back_ios_new)
                  ),
                  const SizedBox(
                    width: 92,
                  ),
                  Text(
                    "Promo day",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(218, 26, 50, 1),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                
                          child: Column(
                            children: [
                              Container(
                                height: 217,
                                width: 357,
                                
                                child: Column(
                                  children: [
                                    
                                    Image.network("https://img.cdn4dd.com/cdn-cgi/image/fit=cover,width=1000,height=300,format=auto,quality=80/https://doordash-static.s3.amazonaws.com/media/store/header/06dcfc70-3eea-4219-8671-105d9aedd771.jpg",),
                                    const Spacer(),
                                    Text("Melts Pizza",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    const Spacer(),
                                    const Text('''Cheesy, Crispy, Loaded. Pizza Baru topping Seru Langsung 
Melts and Go! Pesan sekarang.
''')
                                  ],
                                ),
                                
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                height: 249,
                                width: 357,
                                child: Column(
                                  children: [
                                    Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxRx-3SvhzfRv3Vnl_0v_QS3km0ehrwQaSFQ&usqp=CAU",),
                                    const Spacer(),
                                    Text("Pizza Tipker",style: GoogleFonts.montserrat(fontSize:14,fontWeight:FontWeight.bold),),
                                    const Spacer(),
                                    
                                    const Text(
                                        '''Pizza Tipis dan Krispy dengan varian Topping Classic dan 
Premium, Pesan Sekarang!
''')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ])
          )
        );
  }
}
