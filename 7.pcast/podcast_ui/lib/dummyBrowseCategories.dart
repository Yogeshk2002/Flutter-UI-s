import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/menuScreen.dart';

void main() => runApp(BCategories1());

class BCategories1 extends StatefulWidget {
  State createState() => _BCategoriesState();
}

class _BCategoriesState extends State {
  int selectedIndex = 0;
  List<String> categories = [
    "Categories",
    "Topics",
    "Authors",
    "Episodes",
    "News",
    "Reviews"
  ];
  List<IconData> icons = [
    Icons.play_arrow_outlined,
    Icons.playlist_add_circle_outlined,
    Icons.person_2_outlined,
    Icons.group_work_outlined,
    Icons.category_outlined,
    Icons.map_outlined
  ];

  List<String> images = [
    "lib/assets/images/artsAndEntertainment.png",
    "lib/assets/images/bussiness.png",
    "lib/assets/images/health.png",
    "lib/assets/images/society.png",
    "lib/assets/images/education.png",
    "lib/assets/images/sports.png",
    "lib/assets/images/travels.png",
    "lib/assets/images/news.png"
  ];

  List<String> titles =[
    "Arts and Entertainment",
    "Bussiness and Technology",
    "Health and Lifestyle",
    "Society and culture",
    "Education and Learning",
    "Sport and recreation",
    "Travels and adventures",
    "News and politics"
  ];


  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Color.fromARGB(255, 0, 2, 11),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 340),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Categories",style: GoogleFonts.roboto(fontSize:25,fontWeight:FontWeight.bold,color:Colors.white)),

                  SizedBox(height: 10,),


                  



                    Expanded(
                      child: GridView.builder(
                        itemCount: images.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing:15,
                          crossAxisSpacing: 15
                        ),
                        itemBuilder: (context,index) {
                          

                          String image = images[index];
                          String title = titles[index];


                            return Container(
                              width: 147,
                              height: 122,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(35, 38, 42, 1),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Container(

                                      height: 45,
                                      width: 45,
                                      child: Image.asset(image),
                                    ),
                                    SizedBox(height: 20,),

                                    Text(title,style: GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.bold,color:Colors.white),)
                                  ],
                                ),
                              ),
                            );
                        },
                      ),
                    )
                    




                    
                  ],
                ),
              ),
            )






              // Text(
              //   selectedIndex == -1
              //       ? "Tap a category"
              //       : categories[selectedIndex],
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              // ),


              
            
          ),
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 18, 17, 17),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 98,
                        child: Row(
                          children: [
                            Image.asset(
                              "lib/assets/icons/logo.png",
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "pcast",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.public, color: Colors.white),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(Icons.search_outlined, color: Colors.white),
                          SizedBox(
                            width: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Menu(),
                                ),
                              );
                            },
                            child: Icon(Icons.person_pin_rounded, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Browse",
                      style: GoogleFonts.roboto(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(Icons.search_outlined),
                        hintText: "Yogesh",
                        hintStyle:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        categories.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: buildCategoryColumn(
                            title: categories[index],
                            icon: icons[index],
                            index: index,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryColumn({
    required String title,
    required IconData icon,
    required int index,
  }) {
    Color color = index == selectedIndex ? Colors.red : Colors.white;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Icon(icon, color: index == selectedIndex ? Colors.white : Colors.black),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 12,
              color: const Color.fromARGB(255, 133, 126, 126),
            ),
          ),
        ],
      ),
    );
  }
}


















































// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:podcast_ui/menuScreen.dart';

// void main() => runApp(BCategories());

// class BCategories extends StatefulWidget {
//   State createState() => _BCategoriesState();
// }

// class _BCategoriesState extends State {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Container(
//           height: double.infinity,
//           color: Colors.black,
//         ),
//         Container(
//           //padding: EdgeInsets.only(right: 20),
//           height: 350,
//           width: double.infinity,
//           decoration: const BoxDecoration(
//               color: Color.fromARGB(255, 18, 17, 17),
//               borderRadius:
//                   BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
//               // boxShadow: [
//               //   BoxShadow(
//               //       blurRadius: 20, color: Colors.white, spreadRadius: 5)
//               // ]
//             ),
//           child: Container(
//             padding: EdgeInsets.only(right: 20,left: 20,top: 50),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       height: 40,
//                       width: 98,
//                       child: Row(
//                         children: [
//                           Image.asset("lib/assets/icons/logo.png",),
//                           SizedBox(width: 12,),
//                           Text("pcast",style: GoogleFonts.roboto(fontSize: 20,fontWeight:FontWeight.w900,color:Colors.white)),
//                         ],
//                       ),

                      
//                     ),
//                     Row(
//                       children: [
//                         Icon(Icons.public,color: Colors.white,),
//                         SizedBox(width: 25,),
//                         Icon(Icons.search_outlined,color: Colors.white,),
//                         SizedBox(width: 25,),
//                         GestureDetector(
//                           onTap: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=> Menu()));
//                           },
//                           child: Icon(Icons.person_pin_rounded,color: Colors.white,)
//                         )

//                       ],
//                     )
//                   ]
//                     ),
                    
//                   SizedBox(height: 20,),

//                   Container(
//                     child: Text("Browse",style: GoogleFonts.roboto(fontSize:40,fontWeight:FontWeight.bold,color:Colors.white),),
//                   ),

//                   SizedBox(height: 30,),

//                   Container(
//                     height: 45,
//                     child: TextField(
//                       style: TextStyle(color: Colors.white,),
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.black ,
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
//                         prefixIcon: Icon(Icons.search_outlined),
//                         hintText: "Yogesh",
//                         hintStyle: TextStyle(color: Colors.white.withOpacity(0.5))
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 206, 202, 202)
//                                 ),
//                                 child: Icon(Icons.play_arrow_outlined),
//                               ),
//                               SizedBox(height: 5,),
//                               Text("Categories",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
                          
//                         ),
//                         SizedBox(width: 25,),
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 45,
//                                 height: 45,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 52, 50, 50)
//                                 ),
//                                 child: Icon(Icons.playlist_add_circle_outlined,size: 30,color: Colors.black,)
                                
//                               ),
//                               SizedBox(height: 5,),
//                               Text("Topics",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
//                         ),

//                         SizedBox(width: 25,),
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 45,
//                                 height: 45,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 52, 50, 50)
//                                 ),
//                                 child: Icon(Icons.person_2_outlined,size: 30,),
//                               ),
//                               SizedBox(height: 5,),
//                               Text("Authors",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
//                         ),

//                         SizedBox(width: 20,),
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 45,
//                                 height: 45,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 52, 50, 50)
//                                 ),
//                                 child: Container(
//                                   // 
//                                   child: Icon(Icons.group_work_outlined)
//                                 ),
//                               ),
//                               SizedBox(height: 5,),
//                               Text("Episodes",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
//                         ),

//                         SizedBox(width: 25,),
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 45,
//                                 height: 45,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 52, 50, 50)
//                                 ),
//                                 child: Container(
//                                   // 
//                                   child: Icon(Icons.category_outlined,size: 30,)
//                                 ),
//                               ),
//                               SizedBox(height: 5,),
//                               Text("News",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
                          
//                         ),

//                         SizedBox(width: 25,),
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 45,
//                                 height: 45,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 52, 50, 50)
//                                 ),
//                                 child: Container(
//                                   // 
//                                   child: Icon(Icons.map_outlined,size: 30,)
//                                 ),
//                               ),
//                               SizedBox(height: 5,),
//                               Text("Reviews",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 25,),
//                         GestureDetector(
//                           onTap: (){
//                             //!Alert
//                             //TODO
                    
//                           },
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 45,
//                                 height: 45,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color.fromARGB(255, 52, 50, 50)
//                                 ),
//                                 child: Container(
//                                   // 
//                                   child: Icon(Icons.align_horizontal_right_outlined,size: 30,)
//                                 ),
//                               ),
//                               SizedBox(height: 5,),
//                               Text("Categories",style: GoogleFonts.roboto(fontSize:12,color:const Color.fromARGB(255, 133, 126, 126)),)
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   )




                
//               ]
//             ) 
                    
                    
                
              
//             ),
      
//           ),
//       ]
//         ),
//     );
    
//   }
// }

// Map<String,String> names = {
//   "Mysterious Inexplicables." : "Solapur",
//   "Dark Diaries." : "pune",
//   "Baking A Murder." : "Delhi",
//   "Off The Clock" : "Mumbai"
// };

// List<String> timing = [
//   "23.12.34",
//   "12:12:23",
//   "23:8:23",
//   "21:13:56"
// ];

// List<String> personNames = [
//   "Radhey Kedar",
//   "Yogesh Kedar",
//   "Sneha Kedar",
//   "Prajakta Kedar"
// ];

// List<String> imagesList = [
//   "lib/assets/images/p5.jpg",
//   "lib/assets/images/ppp5.jpg",
//   "lib/assets/images/ppp6.jpg",
//   "lib/assets/images/ppp7.png",
// ];

// List<String> profileIcons = [
//   "lib/assets/icons/radhey.png",
//   "lib/assets/icons/yogesh.png",
//   "lib/assets/icons/sneha.png",
//   "lib/assets/icons/prajakta.png"
// ];

// List<String> podcastsNames = [
//   "Rosemary Richards",
//   "Mitchell Hawkins",
//   "Gregory Miles",
//   "Micale Hales",
//   "Albert peterson"
// ];

// List<String> podcastsdDescription = [
//   "Podcasts : 7 ",
//   "Podcasts : 4 ",
//   "Podcasts : 6 ",
//   "Podcasts : 7 ",
//   "Podcasts : 9 "
// ];

// List<String> podcastsIcons = [
//   "lib/assets/icons/c1.png",
//   "lib/assets/icons/c2.png",
//   "lib/assets/icons/c3.png",
//   "lib/assets/icons/c4.png",
//   "lib/assets/icons/c5.png"
// ];
