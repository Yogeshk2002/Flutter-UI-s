import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/CategoryDetails.dart';
import 'package:music_app/helper/productModel.dart';

class Categories extends StatelessWidget {
  //final Product product;
  const Categories({super.key,});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 185,
      width: 400,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: all.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryDetails(product: all[index],)));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 140,
                    width: 120,
                  
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          all[index].image,
                          
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Text(all[index].name,style: TextStyle(fontSize: 14,color: Colors.white),),
                
                Text("${all[index].year}",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w100),),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20,),
      ),
    );
  }
}