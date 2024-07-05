import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/AuthorScreen.dart';
import 'package:podcast_ui/BrowseCategories.dart';
import 'package:podcast_ui/EpisodesCategory.dart';
import 'package:podcast_ui/PodCastCategory.dart';
import 'package:podcast_ui/menuScreen.dart';
// import 'package:podcast_ui/podcastScreen.dart';
import 'package:podcast_ui/topicsBrowse.dart';

void main() => runApp(Authors());

class Authors extends StatefulWidget {
  State createState() => _AuthorsState();
}

class _AuthorsState extends State {
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

  List<String> AuthorsImages = [
    "lib/assets/images/Author1.png",
    "lib/assets/images/Author3.png",
    "lib/assets/images/Author2.png",
    "lib/assets/images/Author1.png"
  ];

  List<Color> colorsList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
   
  ];

  List<String> authorsName =[
    "Robert Dugoni",
    "J.K.Rowling",
    "Mary Beth Keane",
    "Alise Watson"
  ];

  List<String> podCastCount = [
    "Podcasts: 7 345",
    "Podcasts: 2 143",
    "Podcasts: 4 315",
    "Podcasts: 1 224"
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
                margin: EdgeInsets.only(top: 350),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Authors",style: GoogleFonts.roboto(fontSize:25,fontWeight:FontWeight.bold,color:Colors.white)),

                  SizedBox(height: 10,),

                    // Expanded(
                    //   child: SingleChildScrollView(
                    //     child: Column(
                    //       children: [
                            
                      
                    //       ],
                    //     ),
                    //   ),
                    // )






                    Expanded(
                      child: ListView.builder(
                        itemCount: authorsName.length,
                        itemBuilder: (context,index) {

                        String authorImg = AuthorsImages[index];

                        Color colorName = colorsList[index];
                       
                        String authorName = authorsName[index];
                        String podCasts = podCastCount[index];
                       

                          return GestureDetector(



                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> authorPage()));
                            },


                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 300,
                                    height: 160,
                                    //color: Colors.blue,
                                  ),
                            
                                  
                                ),
                            
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 60),
                                    width: 300,
                                    height: 100,
                                    //color: Colors.white,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
                                      color: colorName
                                    ),
                            
                                    child: Container(
                                      margin: EdgeInsets.only(left: 130,top: 30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(authorName,style: GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.bold),),

                                          Text(podCasts,style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400),)
                                        ],
                                      ),
                                    ),
                                  ),
                            
                                  
                                ),
                            
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                     margin: EdgeInsets.only(top: 3),
                                    width: 120,
                                    height: 160,
                                    //color: Colors.yellow,
                            
                                    child: Image.asset(authorImg),
                                  ),
                            
                                  
                                ),
                              ],
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