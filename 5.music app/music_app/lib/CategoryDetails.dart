import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/CustomBottomNavigation.dart';
import 'package:music_app/helper/productModel.dart';

class CategoryDetails extends StatelessWidget {
  final Product product;
  const CategoryDetails({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 551,
                  width: 390,
            
                  child: Image.asset(product.image,fit: BoxFit.fitHeight,),
            
            
                ),
                Positioned(
                  bottom: 22,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(product.name,style: TextStyle(color: Colors.orangeAccent,fontSize: 24,fontWeight: FontWeight.w600),),
                        SizedBox(height: 5,),
                        Text("${product.year}",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),),
                            
                            
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.file_upload_outlined,color: Colors.orangeAccent,),
                            ],
                          ),
                        )
                            
                      ],
                    ),
                  ),
                )
                
              ],
            ),
        
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("Dynamic WarmUp |",style: TextStyle(fontSize: 14,color: Colors.white),),
                 SizedBox(height: 35,),
                 Text("4 min",style: TextStyle(fontSize: 14,color: Colors.white),),
                ],
              ),
                      
              LinearProgressIndicator(
                value: 0.32,
                color: Colors.orange,
              ),
              SizedBox(height: 24,),
                      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.loop_outlined,color: Colors.white,size: 30,),
                  Icon(Icons.skip_previous,color: Colors.white,size: 30),
                  Icon(Icons.play_circle,color: Colors.white,size: 50),
                  Icon(Icons.skip_next,color: Colors.white,size: 30),
                  Icon(Icons.volume_down,color: Colors.white,size: 30),
                ],
              )
                ],
              ),
            )
        
            
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
    
  }
}