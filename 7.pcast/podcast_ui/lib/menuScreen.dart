import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/Login.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  State createState() => _MenuStateApp();
}

class _MenuStateApp extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Color.fromARGB(255, 18, 19, 20),
          ),
          Container(
            margin: EdgeInsets.only(left: 44),
            height: 232,
            width: 316,
            
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 1, 1, 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              //border: Border.all(color: Color.fromARGB(255, 21, 79, 126),),
              boxShadow: [
                BoxShadow(
                  // spreadRadius: -5,
                  blurRadius: 5,
                  color: Colors.blue
                )
              ]

            ),
            child: Container(
              padding: EdgeInsets.only(top:50,left: 20,right: 20,bottom: 20),
              child: Column(
                children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello,",style: GoogleFonts.roboto(fontSize:24,fontWeight:FontWeight.bold,color:Colors.white),),
                            Text("Yogesh!",style: GoogleFonts.roboto(fontSize:24,fontWeight:FontWeight.bold,color:Colors.white),)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              
                              child: Stack(
                                children: [
                                  Icon(Icons.notifications_none_outlined,color: Colors.white,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    margin: EdgeInsets.only(left: 14,top: 3),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 30,),
                            GestureDetector(
                              onTap: (){

                                  Navigator.of(context).pop();
                                //!Alert
                                // TODO


                              },
                              child: Icon(Icons.cancel_outlined,color: Colors.white,),
                            )

                            
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30,),

                    Container(
                      height: 50,
                      width: 273,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            child: Image.asset("lib/assets/icons/radhey.png"),
                          ),

                          Column(
                            children: [
                              Text("Listened Time",style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.normal,color:Colors.white),),
                              SizedBox(height: 3,),
                              Text("24.15.05",style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.normal,color:Color.fromRGBO(137, 143, 151, 1)),)
                            ],
                          ),

                          Column(
                            children: [
                              Text("Playlists",style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.normal,color:Colors.white),),
                              SizedBox(height: 3,),
                              Text("27",style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.normal,color:Color.fromRGBO(137, 143, 151, 1)),)
                            ],
                          ),

                          Column(
                            children: [
                              Text("Following",style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.normal,color:Colors.white),),
                              SizedBox(height: 3,),
                              Text("179",style: GoogleFonts.roboto(fontSize:14,fontWeight:FontWeight.normal,color:Color.fromRGBO(137, 143, 151, 1)),)
                            ],
                          ),
                          
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),





          Container(
            width: 316,
            margin: EdgeInsets.only(top: 270,left: 44),
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.blue
                )
              ]
            ),
            // child: Padding(
            //   padding: const EdgeInsets.only(top: 5,left: 35),
            //   child: ListView.builder(
            //     itemCount: 6,
            //     itemBuilder: (BuildContext context,int index){
            //       String img = iconsList[index]; 
            //       String name = iconsNames[index];
            //       return Container(
            //         padding: EdgeInsets.all(19),
            //         child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 Container(
            //                   width: 23,
            //                   height: 23,

            //                   decoration: BoxDecoration(

            //                   ),
            //                   child: Image.asset(img,color: Colors.white,),
            //                 ),
            //                 SizedBox(width: 30,),
            //                 Text(name,style: GoogleFonts.roboto(fontSize:14,color:Colors.white),)
            //               ],
            //             )
            //           ],
            //         ),
            //       );
            //     } 
            //   ) 
              
            // ),

            child: Padding(
              padding: const EdgeInsets.only(top: 40,left: 50),
              child: Column(
                children: [
                        Row(
                           children: [
                             Container(
                               width: 25,
                               height: 25,

                               decoration: BoxDecoration(

                               ),
                               child: Image.asset("lib/assets/icons/browse1.png",color: Colors.white,),
                             ),
                             SizedBox(width: 30,),
                             Text("Browse",style: GoogleFonts.roboto(fontSize:16,color:Colors.white),)
                           ],
                         ),

                         SizedBox(height: 35,),

                         Row(
                           children: [
                             Container(
                               width: 25,
                               height: 25,

                               decoration: BoxDecoration(

                               ),
                               child: Image.asset("lib/assets/icons/eye1.png",color: Colors.white,),
                             ),
                             SizedBox(width: 30,),
                             Text("Subscribed",style: GoogleFonts.roboto(fontSize:16,color:Colors.white),)
                           ],
                         ),

                          SizedBox(height: 35,),

                         Row(
                           children: [
                             Container(
                               width: 25,
                               height: 25,

                               decoration: BoxDecoration(

                               ),
                               child: Image.asset("lib/assets/icons/favourite1.png",color: Colors.white,),
                             ),
                             SizedBox(width: 30,),
                             Text("Favourites",style: GoogleFonts.roboto(fontSize:16,color:Colors.white),)
                           ],
                         ),

                         SizedBox(height: 35,),

                         Row(
                           children: [
                             Container(
                               width: 25,
                               height: 25,

                               decoration: BoxDecoration(

                               ),
                               child: Image.asset("lib/assets/icons/history1.png",color: Colors.white,),
                             ),
                             SizedBox(width: 30,),
                             Text("History",style: GoogleFonts.roboto(fontSize:16,color:Colors.white),)
                           ],
                         ),

                         SizedBox(height: 35,),

                         Row(
                           children: [
                             Container(
                               width: 25,
                               height: 25,

                               decoration: BoxDecoration(

                               ),
                               child: Image.asset("lib/assets/icons/wallet.png",color: Colors.white,),
                             ),
                             SizedBox(width: 30,),
                             Text("Payments",style: GoogleFonts.roboto(fontSize:16,color:Colors.white),)
                           ],
                         ),

                         SizedBox(height: 35,),

                         Row(
                           children: [
                             Container(
                               width: 25,
                               height: 25,

                               decoration: BoxDecoration(

                               ),
                               child: Image.asset("lib/assets/icons/Settings1.png",color: Colors.white,),
                             ),
                             SizedBox(width: 30,),
                             Text("Account Settings",style: GoogleFonts.roboto(fontSize:16,color:Colors.white),)
                           ],
                         ),

                         SizedBox(height: 50,),

                         Container(
                          height: 50,
                          width: 200,
                          margin: EdgeInsets.only(right: 50),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(17, 23, 30, 1),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,  
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => LoginScreen())
                                  );},
                                  child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 18)),),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                                    },
                                    child: Icon(Icons.logout_outlined,color: Colors.white,)
                                  )
                            ],
                          ),
                         )
                         
                ],
              ),
            ),

          ),
          
        ],
      ),
    );
  }
}

List<String> iconsList =[
  "lib/assets/icons/browse1.png",
  "lib/assets/icons/eye1.png",
  "lib/assets/icons/favourite1.png",
  "lib/assets/icons/history1.png",
  "lib/assets/icons/wallet.png",
  "lib/assets/icons/Settings1.png",
];

List<String> iconsNames =[
  "Browse",
  "Subscribed",
  "Favorites",
  "History",
  "Payments",
  "Account Settings"
];