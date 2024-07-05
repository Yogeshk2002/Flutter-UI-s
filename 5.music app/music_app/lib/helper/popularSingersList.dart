import 'package:flutter/material.dart';
import 'package:music_app/helper/SingersModel.dart';
import 'package:music_app/helper/categories.dart';

class PopularSingersList extends StatelessWidget {
  //final SingersModel singersModel;
  const PopularSingersList({super.key,});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 100,
        
      
        child: ListView.separated(
           scrollDirection: Axis.vertical,
          itemCount: Singers.length,
          itemBuilder: (context,index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 72,
                    width: 67,
                    
                    child: Image.asset(Singers[index].image),
                  ),
                  SizedBox(width: 5,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Singers[index].name,style: TextStyle(fontSize:14,color: Colors.white),),
                      Row(
                        
                        children: [
                          Text("${Singers[index].year}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100,color: Colors.white),),
                          SizedBox(width: 4,),
      
                          Icon(Icons.star,size: 12,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text(Singers[index].description,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100,color: Colors.white))
              
                        ],
                      )
                    ],
                  )
              
              
                ],
              ),
            );
          },
          separatorBuilder: (context,index) => const SizedBox(height: 15,),
        ),
      ),
    );
  }
}