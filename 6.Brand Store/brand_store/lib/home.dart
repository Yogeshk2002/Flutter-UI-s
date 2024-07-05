import 'package:brand_store/MyCart.dart';
import 'package:brand_store/Widget/CategoryGrid.dart';
import 'package:brand_store/Widget/product_card.dart';
import 'package:brand_store/models/productModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  
  Home({super.key,});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(Icons.view_module_rounded),
        ),
        actions: [
          
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Icon(Icons.person_outline_rounded),
          ),
          
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text("Explore",style: GoogleFonts.imprima(fontSize:36,fontWeight:FontWeight.w600),),
                Text("Best trendy collection",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w100),),


              ],
            ),
            SizedBox(height: 10,),

            SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 242, 103, 16)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("All",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Men",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Women",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Kids",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 56, 64, 66)),fixedSize: MaterialStateProperty.all(Size.infinite)),onPressed: (){}, child: Center(child: Text("Other",style: GoogleFonts.roboto(fontSize:16,fontWeight:FontWeight.w400,color:Color.fromRGBO(255, 255, 255, 1)),),)),
                        SizedBox(width: 20,),
                        ],
                      ),
                  ),

                  SizedBox(height: 10,),

                  // ListView.builder(
                  //   itemCount: 4,
                  //   itemBuilder: (context, index) {
                  //     //return ProductCart();
                  //   },
                  // )
                  // CategoryGrid(),
                  Expanded(

                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemCount: all.length,
                      itemBuilder: (context, index) {
                        return ProductCard(product: all[index]);
                      },
                    
                    ),
                  )

                  

                  

                  

              
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.home_max_outlined,color: Colors.orange,),
                Text("Home",style: TextStyle(color: Colors.orange),),
              ],
            ),

            // SizedBox(width: 50,),

            Column(
              children: [

                Icon(Icons.search_outlined),
                Text("Search"),

              ],
            ),

            Column(
              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                  },
                  child: Icon(Icons.shopping_basket_outlined)),
                Text("Cart"),

              ],
            ),

            Column(
              children: [

                Icon(Icons.settings_outlined),
                Text("Settings"),

              ],
            ),

          ],
        ),
      ),
    );
  }
}