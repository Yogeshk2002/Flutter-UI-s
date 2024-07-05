import 'package:flutter/material.dart';
import 'package:music_app/gallery.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container (
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/homeBackground.png"),
              fit: BoxFit.cover,
              
            ),
          ),
          
          ),
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(1.0),
                    Colors.transparent.withOpacity(0.3),
                  ],
                ),
              ),
            ),

            Positioned(
               left: 50,
               top: 450,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dancing Between",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("The shadows",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("Of rhythm",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                  
                        SizedBox(height: 10,),
                        OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStatePropertyAll(BorderSide.none),
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 246, 9, 9)),
                            minimumSize: MaterialStateProperty.all(Size(250, 50)),
                            
                            
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
                          }, 
                          child: Text("Get Started",style: TextStyle(color: Colors.white),)),
                          SizedBox(height: 10,),
                          OutlinedButton(
                          style: ButtonStyle(
                            
                            minimumSize: MaterialStateProperty.all(Size(250, 50)),
                            
                            
                          ),
                          onPressed: (){}, 
                          child: Text("Continue with Email",style: TextStyle(color: Colors.red),)),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              
                              children: [
                                Text("by continuing you agree to terms",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100,color: Colors.white),),
                                Text("of services and Privacy policy",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100,color: Colors.white),),
                            
                              ],
                            ),
                          )
                      ],
                  
                      
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}