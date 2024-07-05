import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/BrowseCategories.dart';
import 'package:podcast_ui/PodCastCategory.dart';
import 'package:podcast_ui/authorsCategory.dart';
import 'package:podcast_ui/menuScreen.dart';
import 'package:podcast_ui/topicsBrowse.dart';

void main() => runApp(Episodes());

class Episodes extends StatefulWidget {
  State createState() => _EpisodesState();
}

class _EpisodesState extends State {
  int selectedIndex = 0;
  List<String> categories = [
    "Categories",
    "Topics",
    "Authors",
    "Podcasts",
    "Episodes",
    "News"
  ];
  List<IconData> icons = [
    Icons.play_arrow_outlined,
    Icons.playlist_add_circle_outlined,
    Icons.person_2_outlined,
    Icons.group_work_outlined,
    Icons.category_outlined,
    Icons.map_outlined
  ];

  List<String> titles = [
    "Episode 1",
    "Episode 2",
    "Episode 3",
    "Episode 4"
  ];

  List<String> descriptions = [
    "About Flow And Motivation",
    "Seamless progression.",
    "An interesting example",
    "The example of the Shop"
  ];

  List<String> timing = [
    "10:12:00",
    "09:08:23",
    "04:02:13",
    "07:11:34"
  ];

  List<String> downloadSizes = [
    "100 mb",
    "82 mb",
    "34 mb",
    "57 mb"
  ];

  

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 350),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Episodes(4)",style: GoogleFonts.roboto(fontSize:25,fontWeight:FontWeight.bold,color:Colors.white)),

                  SizedBox(height: 10,),

                    

                    Expanded(
                      child: ListView.builder(
                        itemCount: titles.length,
                        itemBuilder: (context,index) {


                          String title = titles[index];
                          String description = descriptions[index];
                          String time = timing[index];
                          String size = downloadSizes[index];

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 309,
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                gradient: LinearGradient(
                                  colors: [Colors.black,Colors.white]
                                )
                            
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.play_circle,color: Colors.blue,size: 50,),
                                    SizedBox(width: 7,),

                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(title,style: GoogleFonts.roboto(fontSize:15,fontWeight:FontWeight.bold,color:Colors.white),),
                                        Text(description,style: GoogleFonts.roboto(fontSize:10,fontWeight:FontWeight.w200,color:Colors.white),)
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(time,style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.bold,color:Colors.white),),
                                            SizedBox(width: 2,),
                                            Text(size,style: GoogleFonts.roboto(fontSize:10,fontWeight:FontWeight.w200,color:Colors.white),),
                                        
                                          ],
                                        ),
                                    
                                        SizedBox(width: 17,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(255, 122, 119, 119)
                                          ),
                                          child: Icon(Icons.download),
                                        )
                                    
                                    
                                      ],
                                    ),
                                  ],
                                ),
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

        if(index == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => BCategories()));
        }

        if(index == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => BrowseTopics()));
        }

        if(index == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Authors()));
        }

        if(index == 3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PodcastCat()));
        }

        if(index == 4) { 
          Navigator.push(context, MaterialPageRoute(builder: (context) => Episodes()));
        }
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