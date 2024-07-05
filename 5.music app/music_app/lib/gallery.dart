import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/CustomBottomNavigation.dart';
import 'package:music_app/helper/categories.dart';
import 'package:music_app/helper/popularSingersList.dart';
import 'package:music_app/helper/productModel.dart';

class Gallery extends StatelessWidget {
  
  const Gallery({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 31, 30, 30)),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset("images/gallary.png"),
                ),
               

                Positioned(
                  top: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("A.L.O.N.E",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),),
                          OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStatePropertyAll(BorderSide.none),
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 246, 9, 9)),
                            minimumSize: MaterialStateProperty.all(Size(127, 37)),
                            
                            
                          ),
                          onPressed: (){}, 
                          child: Text("Subscribe",style: TextStyle(color: Colors.white),)),

                        ],
                      ),
                    ),
                  ),
                ),
                
                
              
              ],
            ),
             SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                      
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                      
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                      
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                      
                    ),
                  ),
                ],
              ),
              
              

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discography",style: TextStyle(color: Colors.red,fontSize: 16),),
                  Text("See all",style: TextStyle(fontSize: 16,color: Colors.yellow),)
                ],
              ),

              //SizedBox(height: 5,),

                Categories(),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Singers",style: TextStyle(color: Colors.red,fontSize: 16),),
                  Text("See all",style: TextStyle(fontSize: 16,color: Colors.yellow),)
                ],
              ),
              PopularSingersList()

                ],
              ),
            ),

            
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}