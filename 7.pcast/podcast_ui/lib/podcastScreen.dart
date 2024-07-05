import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/menuScreen.dart';

class Podcast extends StatefulWidget {

 Podcast({super.key});

 State createState() => _PodcastState();
}

class _PodcastState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
           height: double.infinity,
            color: const Color.fromARGB(255, 0, 0, 0),
          
          child: Container(
            margin: EdgeInsets.only(top: 300),
            height: 500,
            width: double.infinity,
            color: Color.fromARGB(255, 4, 1, 23),
          
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text("Hello",style: GoogleFonts.roboto(color:Colors.white),),
          
                    // LinearProgressIndicator(
                    //   value: 0.6,
                    //   borderRadius: BorderRadius.circular(40),
                    //   // color: Colors.blue,
                    // ),



                    Stack(
                      alignment: Alignment.center,
                      children: [
                        LinearProgressIndicator(
                            value: 0.5, // Set the progress value here
                          ),
                          Container(
                            width: 15, // Adjust the size of the circular shape as needed
                            height: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                      ],
                    ),




                    
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              
                              child: Image.asset("lib/assets/images/like1.gif",)
                            ),
                            SizedBox(width: 2,),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              child: Text("37 501",style: TextStyle(color: Color.fromARGB(255, 211, 205, 205)),)
                            ),

                          ],
                        ),

                        Container(
                          child: Text("24:15:05",style: TextStyle(color: Colors.white),)
                        ),

                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 4),
                              child: Text("200",style: TextStyle(color: Color.fromARGB(255, 216, 210, 210)),)
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image.asset("lib/assets/images/dislike.gif")
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(color: Color.fromARGB(255, 120, 116, 116),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(25, 35, 47, 1)
                                
                              ),
                              child: Icon(Icons.horizontal_distribute_outlined,color: Colors.white,size: 15,),
                            ),
                            SizedBox(width: 5,),
                            Text("Episode 2",style: TextStyle(color: Colors.white)),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(25, 35, 47, 1)
                                
                              ),
                              child: Icon(Icons.download,color: Colors.white,size: 15,),
                            ),
                            SizedBox(width: 5,),
                            Text("50mb",style: TextStyle(color: Colors.white),),
                          ],
                        ),

                       Icon(Icons.more_vert,color: Colors.white,)

                        
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: Text("The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli. ",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                      // color: Colors.black,
                    ),
                    SizedBox(height: 30,),
                    
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        
                        children: [
                          Text("Episodes(8)",style: GoogleFonts.roboto(fontSize:18,fontWeight:FontWeight.bold,color:Colors.white),),
                      
                      SizedBox(height: 10,),
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 1",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("23 Jan 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("10:15:00",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("10mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),



                                
                                





                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 2",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("24 Feb 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("08:00:00",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("38mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 3",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("25 Mar 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("09:11:42",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("42mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 4",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("23 Apr 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("11:15:20",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("53mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 5",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("26 May 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("05:00:00",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("20mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 6",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("27 June 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("08:17:51",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("32mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 7",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("28 July 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("13:12:53",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("72mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      
                      Container(
                        height: 64,
                        width: 309,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white)
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,),
                          
                              ),
                              SizedBox(width: 15,),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Episode 8",style: GoogleFonts.roboto(fontSize:14,color:Colors.white),),
                                  Text("29 Aug 2019",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white))
                                ],
                              )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("10:27:12",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      Text("53mb",style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Colors.white),),
                                      
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                      
                                  Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 122, 114, 114),
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.download,color: Colors.white,),
                          
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                        ],
                      ),
                    ),




                    
                  ],
                ),
              ),
            ),
          ),
          
       ),


















       


















          Container(
           height: 300,
           
            color: Color.fromARGB(255, 9, 9, 9),
          
            child: Opacity(
              opacity: 0.2,
              child: Image.asset("lib/assets/images/colors1.jpeg",fit: BoxFit.fill,)
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top:50,left: 20,right: 20),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(

                        onTap: () {
                          Navigator.of(context).pop();
                        },

                        child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)
                      ),

                      Row(
                        children: [
                          Icon(Icons.search,color: Colors.white,),
                          SizedBox(width: 30,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                            },
                            child: Icon(Icons.person_pin_rounded,color: Colors.white,)
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("About flow and our",style: GoogleFonts.roboto(fontSize:24,fontWeight:FontWeight.bold,color:Colors.white),),
                  Text("motivations",style: GoogleFonts.roboto(fontSize:24,fontWeight:FontWeight.bold,color:Colors.white)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                      height: 110,
                      width: 90,
                      child: Image.asset("lib/assets/images/manListeningRemoved.png",fit: BoxFit.fitHeight,),

                      ),

                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                      
                        children: [
                          
                          Container(margin: EdgeInsets.only(left: 5),child: Text("John Deo and Amanda Smith",style: GoogleFonts.roboto(fontSize:10,fontWeight:FontWeight.w200,color:Colors.white),)),
                          SizedBox(
                            height: 10,
                          ),
                          

                          Row(
                            children: [
                              Icon(Icons.skip_previous_outlined,color: Colors.white,),
                              SizedBox(width: 7,),
                              Icon(Icons.pause_circle_filled_outlined,color: Colors.red,size: 55,),
                              SizedBox(width: 7,),
                              Icon(Icons.skip_next_outlined,color: Colors.white,),

                            ],
                          )
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 5),
                      height: 115,
                      width: 100,
                      child: Image.asset("lib/assets/images/womanMusic-removed.png",fit: BoxFit.fitHeight,),

                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
 
