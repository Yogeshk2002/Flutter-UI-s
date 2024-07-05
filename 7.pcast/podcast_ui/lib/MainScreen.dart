import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/BrowseCategories.dart';
import 'package:podcast_ui/menuScreen.dart';
import 'package:podcast_ui/podcastScreen.dart';

void main() => runApp(mainScreen());

class mainScreen extends StatefulWidget {
  State createState() => _mainScreenState();
}

class _mainScreenState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          //width: 400,
          color: Color.fromARGB(255, 38, 38, 38),

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,right: 20,top: 330),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Listen Podcasts",style: GoogleFonts.roboto(fontSize:24,fontWeight:FontWeight.w600,color:Colors.white),),
                  SizedBox(height: 15,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 14, 14)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Recent",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 108, 105, 99)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Topics",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(0, 0, 0, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 108, 105, 99)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Authors",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(13, 13, 13, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 108, 105, 99)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Episodes",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(8, 8, 8, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 108, 105, 99)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("News",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(7, 7, 7, 1)),),))
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        names.length,
                          (index) {

                            String place = names.keys.elementAt(index);
                            String description = names.values.elementAt(index);
                            String time = timing[index % timing.length];
                            String pname = personNames[index % personNames.length];
                            String imagePath = imagesList[index % imagesList.length];
                            String pIcons = profileIcons[index % profileIcons.length];


                       
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 234,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 136,
                                      width: 147,
                                      child: Image.asset(imagePath,fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                                        //border: Border.all(color: Colors.black)
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(place,style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.w600,color:Color.fromARGB(255, 255, 255, 255)),),
                                    Row(
                                      
                                      children: [
                                        Icon(Icons.location_on,size: 20,color: Color.fromARGB(255, 189, 43, 43),),
                                        Text(description,style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.w600,color:Color.fromARGB(255, 225, 225, 6)),),
                                      ],
                                    ),

                                    SizedBox(height: 8,),





                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.watch_later_outlined,color: Color.fromRGBO(131, 143, 151, 1),),
                                        SizedBox(width: 7,),
                                        Text(time,style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w400,color:Color.fromRGBO(137, 143, 151, 1)),)
                                      ],
                                    ),
                                    SizedBox(height: 3,),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height: 18,
                                                  width: 18,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle
                                                  ),
                                                  child: Image.asset(pIcons,fit: BoxFit.cover,),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 9,),
                                            Text(pname,style: GoogleFonts.roboto(fontSize:12,color:Color.fromARGB(255, 163, 154, 154)),)
                                            
                                          ],
                                        )
                                        
                                      ],
                                    ),
                                          ],
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          height: 37,
                                          width: 49.3,
                                          child: Image.asset("lib/assets/icons/circle.png",color: Color.fromARGB(255, 110, 172, 222),)
                                        )

                                      ],
                                    ),
                                    

                                    
                                  ],
                                ),
                              ),
                            );
                          }
                      )
                          
                        
                      
                    ),
                  ),
                  SizedBox(height: 0.5,),
                  Divider(
                    color: Color.fromARGB(255, 66, 61, 61),
                  ),
                  SizedBox(height: 15,),

                  Text("Podcasts Authors",style: GoogleFonts.roboto(fontSize:24,fontWeight:FontWeight.w600,color:Colors.white),),

                  SizedBox(height: 8,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 152, 179)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Popular",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Most Podcasts",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Most Followed",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Most Likes",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Recent",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        // ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Recent",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        // SizedBox(width: 20,),
                          // TextButton(onPressed: (){}, child: Center(child: Text("Popular",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(137, 143, 151, 1)),),)),
                          // TextButton(onPressed: (){}, child: Center(child: Text("Most podcasts",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(137, 143, 151, 1)),),)),
                          // TextButton(onPressed: (){}, child: Center(child: Text("Most followed",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(137, 143, 151, 1)),),)),
                          // TextButton(onPressed: (){}, child: Center(child: Text("Most Liked",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(137, 143, 151, 1)),),)),
                          // TextButton(onPressed: (){}, child: Center(child: Text("Recent",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(137, 143, 151, 1)),),)),
                        ],
                      ),
                  ),

                  SizedBox(
                    height: 10,
                  ),





                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        podcastsNames.length ,
                          (index) {

                              String podName = podcastsNames[index % podcastsNames.length];
                              String podDes = podcastsdDescription[index %podcastsdDescription.length];
                              String podIcons = podcastsIcons[index];
                       
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 170,
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      
                                      child: Image.asset(podIcons,fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        //borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                                        //border: Border.all(color: Colors.black)
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(podName,style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.w600,color:Colors.white),),
                                    Text(podDes,style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.w600,color:Color.fromARGB(255, 89, 80, 80)),),

                                    SizedBox(height: 8,),
                                    
                                    

                                    
                                  ],
                                ),
                              ),
                            );
                          }
                      )
                          
                        
                      
                    ),
                  ),











                ],
              ),
            ),
          ),
        ),
        Container(
          //padding: EdgeInsets.only(right: 20),
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 75, 68, 68),
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
              // boxShadow: [
              //   BoxShadow(
              //       blurRadius: 20, color: Colors.white, spreadRadius: 5)
              // ]
            ),
          child: Container(
            padding: EdgeInsets.only(right: 20,left: 20,top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 98,
                      child: Row(
                        children: [
                          Image.asset("lib/assets/icons/logo.png",),
                          SizedBox(width: 12,),
                          Text("pcast",style: GoogleFonts.roboto(fontSize: 20,fontWeight:FontWeight.w900,color:Colors.white)),
                        ],
                      ),

                      
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BCategories()));
                          },
                          child: Icon(Icons.public,color: Colors.white,)
                        ),
                        SizedBox(width: 25,),
                        Icon(Icons.search_outlined,color: Colors.white,),
                        SizedBox(width: 25,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Menu()));
                          },
                          child: Icon(Icons.person_pin_rounded,color: Colors.white,)
                        )

                      ],
                    )
                  ]
                    ),
                    
                  SizedBox(height: 20,),




                Container(
                  height: 175,
                  //color: Colors.blue,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      height: 145,
                      width: double.infinity,
                      //color: Colors.red,
                      decoration: const BoxDecoration(
                        color:  Color.fromARGB(255, 5, 5, 5),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.5,
                            //spreadRadius: 0.5,
                            color: Colors.white
                          )
                        ]
                      ),
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset("lib/assets/images/background1.png",cacheHeight: 225,cacheWidth: 650,)
                      ),
                    ),
                      Container(
                        height: 22,
                        width: 37,
                        
                        margin: EdgeInsets.only(top: 0.2,left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: const Color.fromARGB(255, 223, 51, 39)
                        ),
                        child: Center(child: Text("New",style: GoogleFonts.roboto(fontSize:12,color:Colors.white,fontWeight:FontWeight.bold))),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 25,left: 12),
                        height: 125,
                        width: 298,
                        //color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About flow and Our",style: GoogleFonts.roboto(fontSize:25,fontWeight:FontWeight.w400,color:Colors.white),),
                            Text("motivations",style: GoogleFonts.roboto(fontSize:25,fontWeight:FontWeight.w400,color:Colors.white)),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                      Text("23.05.2019",style: GoogleFonts.roboto(fontSize:13,color:Color.fromRGBO(137, 143, 151, 1)),),
                                      SizedBox(width: 5,),
                                      Icon(Icons.alarm,color: Color.fromRGBO(137, 143, 151, 1),size: 19,),
                                      SizedBox(width: 5,),
                                      Text("23.05.2019",style: GoogleFonts.roboto(fontSize:13,color:Color.fromRGBO(137, 143, 151, 1)),),
                                    ],
                                    ),
                                    Container(
                                       height: 25,
                                      // width: 40,
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 19,
                                            width: 19,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle
                                            ),
                                            child: Image.asset("lib/assets/images/profile1.png"),
                                          ),
                                          SizedBox(width: 7,),
                                          Text("Yogesh Kedar",style: GoogleFonts.roboto(fontSize:13,color:Color.fromRGBO(255, 255, 255, 1)),),
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Podcast()));
                                  },
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    margin: EdgeInsets.only(right: 30),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 15,
                                          // spreadRadius: 0.5,
                                          color: Colors.red
                                        )
                                      ],
                                      shape: BoxShape.circle
                                    ),
                                    child: Image.asset("lib/assets/images/playbutton.png"),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                      
                      
                   
                    ],
                  ),
                )
              ]
            ) 
                    
                    
                
              
            ),
      
          ),
      ]
        ),
    );
    
  }
}

Map<String,String> names = {
  "Mysterious Inexplicables." : "Solapur",
  "Dark Diaries." : "pune",
  "Baking A Murder." : "Delhi",
  "Off The Clock" : "Mumbai"
};

List<String> timing = [
  "23.12.34",
  "12:12:23",
  "23:8:23",
  "21:13:56"
];

List<String> personNames = [
  "Radhey Kedar",
  "Yogesh Kedar",
  "Sneha Kedar",
  "Prajakta Kedar"
];

List<String> imagesList = [
  "lib/assets/images/p5.jpg",
  "lib/assets/images/ppp5.jpg",
  "lib/assets/images/ppp6.jpg",
  "lib/assets/images/ppp7.png",
];

List<String> profileIcons = [
  "lib/assets/icons/radhey.png",
  "lib/assets/icons/yogesh.png",
  "lib/assets/icons/sneha.png",
  "lib/assets/icons/prajakta.png"
];

List<String> podcastsNames = [
  "Rosemary Richards",
  "Mitchell Hawkins",
  "Gregory Miles",
  "Micale Hales",
  "Albert peterson"
];

List<String> podcastsdDescription = [
  "Podcasts : 7 ",
  "Podcasts : 4 ",
  "Podcasts : 6 ",
  "Podcasts : 7 ",
  "Podcasts : 9 "
];

List<String> podcastsIcons = [
  "lib/assets/icons/c1.png",
  "lib/assets/icons/c2.png",
  "lib/assets/icons/c3.png",
  "lib/assets/icons/c4.png",
  "lib/assets/icons/c5.png"
];
