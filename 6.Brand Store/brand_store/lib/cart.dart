import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Cart extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: GoogleFonts.imprima(),),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Orders",style: GoogleFonts.imprima(fontSize:40,fontWeight:FontWeight.w800),),
            SizedBox(height: 20,),







          





            Slidable(
            key: ValueKey(0),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                Container(
                  
                  height: 70,
                  width: 70,
                  child: Row(
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          // Add your delete logic here
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.favorite_border,

                        
                      ),
                      
                    ],
                  ),
                ),

                
                Container(
                  
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          // Add your delete logic here
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete_outline,

                        
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            child: Container(
              height: 144,
              width: 315,

              child: Row(
                children: [
                  Image.asset("images/Cart1.png"),
                  SizedBox(width: 15,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Premium",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w800),),
                      Text("Tagerine Shirt",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w800),),
                      SizedBox(height: 15,),
                      Text("Yellow",style: TextStyle(fontWeight: FontWeight.w200),),
                      Text("Size B",style: TextStyle(fontWeight: FontWeight.w200),),
                      SizedBox(height: 10,),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Rs.257.85",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                            SizedBox(width: 70,),
                            Row(
                              
                              children: [
                                Text("1",style: TextStyle(fontSize: 27),),
                                Text("x")
                              ],
                            )
                          ],
                        ),
                      ),

                      

                    ],
                  ),
                ],
              ),
            ),
          ),









            

            SizedBox(height: 20,),



            Slidable(
            key: ValueKey(1),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                Container(
                  
                  height: 70,
                  width: 70,
                  child: Row(
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          // Add your delete logic here
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.favorite_border,

                        
                      ),
                      
                    ],
                  ),
                ),

                
                Container(
                  
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          // Add your delete logic here
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete_outline,

                        
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            child: Container(
            height: 144,
              width: 315,

              child: Row(
                children: [
                  Image.asset("images/Cart2.png"),
                  SizedBox(width: 15,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Leather",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w800),),
                      Text("Tagerine Coart",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w800),),
                      SizedBox(height: 15,),
                      Text("Yellow",style: TextStyle(fontWeight: FontWeight.w200),),
                      Text("Size B",style: TextStyle(fontWeight: FontWeight.w200),),
                      SizedBox(height: 10,),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Rs.257.85",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                            SizedBox(width: 70,),
                            Row(
                              
                              children: [
                                Text("1",style: TextStyle(fontSize: 27),),
                                Text("x")
                              ],
                            )
                          ],
                        ),
                      ),

                      

                    ],
                  ),
                ],
              ),
            ),
          ),


            // Container(
            //   height: 144,
            //   width: 315,

            //   child: Row(
            //     children: [
            //       Image.asset("images/Cart2.png"),
            //       SizedBox(width: 15,),

            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text("Leather",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w800),),
            //           Text("Tagerine Coart",style: GoogleFonts.imprima(fontSize:18,fontWeight:FontWeight.w800),),
            //           SizedBox(height: 15,),
            //           Text("Yellow",style: TextStyle(fontWeight: FontWeight.w200),),
            //           Text("Size B",style: TextStyle(fontWeight: FontWeight.w200),),
            //           SizedBox(height: 10,),

            //           Expanded(
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Text("Rs.257.85",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            //                 SizedBox(width: 70,),
            //                 Row(
                              
            //                   children: [
            //                     Text("1",style: TextStyle(fontSize: 27),),
            //                     Text("x")
            //                   ],
            //                 )
            //               ],
            //             ),
            //           ),

                      

            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            SizedBox(height: 10,),

            Divider(),

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Items (3)",style: TextStyle(fontSize: 16),),
                Text("\$116.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Standart Delivery",style: TextStyle(fontSize: 16),),
                Text("\$12.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Payment",style: TextStyle(fontSize: 16),),
                Text("\$126.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),

            SizedBox(height: 45,),

            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),

                  padding: MaterialStateProperty.all(EdgeInsets.only(left:30,right: 30,top: 15,bottom: 15))
                ),
                onPressed: (){},
                child: Text("Checkout Now",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            )
          ],

          
        ),

        
      ),
    );
  }
}