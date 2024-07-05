import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podcast_ui/menuScreen.dart';

class authorPage extends StatefulWidget {
  const authorPage({super.key });

  State createState() => _authorPageState();
}

class _authorPageState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),

      body: Stack(
        children: [
          Container(
            height: double.infinity,

            decoration: BoxDecoration(
              color: Colors.black
            ),

            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                // height: 700,
                margin: EdgeInsets.only(top: 370),
                child:  Column(
                  children: [
                    Column(
                      children: [
                        Text("Robert Dugoni is an American writer of Irish parentage. She is the author of The Walking People, Fever,and Ask Again, Yes. In 2011 she was named one of the National...",style: TextStyle(color: Colors.white),),
                        Row(
                          children: [
                            Text("Read More",style: TextStyle(color: Color.fromARGB(255, 135, 132, 132)),),
                            SizedBox(width: 3,),
                            Icon(Icons.arrow_drop_down,color: Color.fromARGB(255, 135, 132, 132))
                          ],
                        ),

                        SizedBox(height: 10,),

                        

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           ElevatedButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 83, 172, 244)),),),
                           Text("+1.3k followers",style: TextStyle(color: Colors.white),)
                          ],
                        ),

                        SizedBox(height: 20,),

                        Row(
                          children: [
                            Text("Recent",style: TextStyle(color: Colors.blue),),
                            SizedBox(width: 27,),
                            Text("Popular",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 27,),
                            Text("As guest",style: TextStyle(color: Colors.white),)
                          ],
                        ),

                        SizedBox(height: 20,),

                        Column(
                          children: [
                            Container(
                              height: 40,
                              // width: 200,

                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.play_circle,color: Colors.blue,size: 50,),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("Episode 1",style: TextStyle(color: Colors.white),),
                                          SizedBox(height: 4,),
                                          Text("23 May 2019",style: TextStyle(color: Color.fromARGB(255, 89, 87, 87)),)
                                        ],
                                      ),

                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text("10:15:00",style: TextStyle(color: Color.fromARGB(255, 89, 87, 87)),),
                                                  SizedBox(height: 4,),
                                                  Text("10mb",style: TextStyle(color: Color.fromARGB(255, 89, 87, 87)),)

                                                ],
                                              ),

                                              SizedBox(width: 20,),

                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(255, 78, 76, 76),
                                                  shape: BoxShape.circle

                                                ),

                                                child: Icon(Icons.download_rounded,color: Colors.white,),
                                              )
                                              
                                            ],
                                          ),

                                          
                                          
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                                
                              ),

                            ),
                            SizedBox(height: 45,),

                            Container(
                              height: 40,
                              // width: 200,

                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.play_circle,color: Colors.blue,size: 50,),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("Episode 2",style: TextStyle(color: Colors.white),),
                                          SizedBox(height: 4,),
                                          Text("27 Apr 2019",style: TextStyle(color: Color.fromARGB(255, 89, 87, 87)),)
                                        ],
                                      ),

                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text("08:12:12",style: TextStyle(color: Color.fromARGB(255, 89, 87, 87)),),
                                                  SizedBox(height: 4,),
                                                  Text("07mb",style: TextStyle(color: Color.fromARGB(255, 89, 87, 87)),)

                                                ],
                                              ),

                                              SizedBox(width: 20,),

                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(255, 78, 76, 76),
                                                  shape: BoxShape.circle

                                                ),

                                                child: Icon(Icons.download_rounded,color: Colors.white,),
                                              )
                                              
                                            ],
                                          ),

                                          
                                          
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                                
                              ),

                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
            
          ),

          Container(
            height: 366,

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 63, 62, 62),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
            ),

            child: Container(
              margin: EdgeInsets.only(left: 30,top: 310),
              child: 
              Row(
                children: [
                  Icon(Icons.star,color: Colors.amber,),
                  Icon(Icons.star,color: Colors.amber),
                  Icon(Icons.star,color: Colors.amber),
                  Icon(Icons.star_half,color: Colors.amber),
                  Icon(Icons.star_border,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("3.5",style: TextStyle(color: Colors.white),)

                ],
              )
            ),
          ),

          Container(
            height: 300,

            decoration: BoxDecoration(
              color:  Colors.red,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
            ),

            child: Padding(
              padding: const EdgeInsets.only(top:60,left: 30,right: 30),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back,color: Colors.white,)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search,color: Colors.white,),
                          SizedBox(
                            width: 35,
                          ),
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

                  SizedBox(height: 30,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Robert Dugoni",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.facebook_outlined,color: Colors.white,),
                          SizedBox(width: 15,),
                          // Icon(Icons.gi)
                          Container(
                            width: 25,
                            height: 23,
                            
                            child: Image.asset("lib/assets/images/google.png",color: Colors.white,)
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 25,
                            height: 23,
                            
                            child: Image.asset("lib/assets/images/twitter.png",color: Colors.white,)
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 25,
                            height: 23,
                            
                            child: Image.asset("lib/assets/images/instagram.png",color: Colors.white,)
                          ),
                          


                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Icon(Icons.mic,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Podcasts: 7 286",style: TextStyle(color: Colors.white),),
                        ],
                      )

                    ],
                  )

                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 190,
              top: 172,
              
            ),
            height: 190,
            width: 180,

            decoration: BoxDecoration(
              //color:  Colors.white,
              //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
            ),

            child: Container(
              
              child: Image.asset("lib/assets/images/Author1.png",fit: BoxFit.fitHeight,)
            ),
          ),
        ],
      ),

      
    );
  }
}

