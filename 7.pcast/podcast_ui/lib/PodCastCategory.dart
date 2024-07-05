import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/BrowseCategories.dart';
import 'package:podcast_ui/EpisodesCategory.dart';
// import 'package:podcast_ui/MainScreen.dart';
import 'package:podcast_ui/authorsCategory.dart';
import 'package:podcast_ui/menuScreen.dart';
// import 'package:podcast_ui/podcastScreen.dart';
import 'package:podcast_ui/topicsBrowse.dart';

void main() => runApp(PodcastCat());

class PodcastCat extends StatefulWidget {
  State createState() => _PodcastCatState();
}

class _PodcastCatState extends State {
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
    "Tincidunt facilisis is not fermentum nec sed",
    "Nulla leo dictum pharetra ultricies",
     "Nunc euismod rutrum gravida."
  ];

  List<String> subtitles = [
    "Thersa Hawkins",
    "Wade Flores",
    "Alison Watson"
  ];

  List<String> timing1 = [
    "23.05.2019",
    "22.03.2020",
    "21.01.2021"
  ];

  List<String> timing2 = [
    "20.03.2019",
    "21.04.2020",
    "26.02.2021"
  ];

  List<String> artistIcons = [
    "lib/assets/images/manMusic1.jpeg",
    "lib/assets/images/manListeningRemoved.png",
    "lib/assets/images/manMusic.jpeg"
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
                    Text("Podcasts(3)",style: GoogleFonts.roboto(fontSize:25,fontWeight:FontWeight.bold,color:Colors.white)),

                  SizedBox(height: 10,),

                    

                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context,index) {


                          String title = titles[index];
                          String timingof1 = timing1[index];
                          String timingof2 = timing2[index];
                          String aIcon = artistIcons[index];
                          String nameArtst = subtitles[index];
 
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 172,
                              width: 309,
                            
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                gradient: LinearGradient(
                                  colors: [Color.fromARGB(255, 54, 51, 51),Color.fromARGB(255, 221, 217, 217)]
                                )
                                  
                                    
                              ),
                            
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(title,style: GoogleFonts.roboto(fontSize:22,fontWeight:FontWeight.bold,color:Colors.white),),
                                    SizedBox(height: 25,),
                                    
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                      children: [
                                        Text(timingof1,style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Color.fromARGB(255, 224, 217, 217)),),
                                        SizedBox(width: 7,),
                                        Icon(Icons.watch_later_outlined,size: 10,color:Color.fromARGB(255, 224, 217, 217)),
                                        SizedBox(width: 7,),
                                        Text(timingof2,style: GoogleFonts.roboto(fontSize:12,fontWeight:FontWeight.w200,color:Color.fromARGB(255, 224, 217, 217)),)
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Container(height:20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle),child: Image.asset(aIcon)),
                                        SizedBox(width: 5,),
                                        Text(nameArtst,style: GoogleFonts.roboto(fontSize:12,color:Colors.white),)
                                      ],
                                    )
                                          ],
                                        ),

                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 9
                                                //color: Colors.red
                                              )
                                            ]
                                            
                                          ),
                                          child: Icon(Icons.play_circle,size: 50,color: Colors.red,)
                                        )
                                      ],
                                    )
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