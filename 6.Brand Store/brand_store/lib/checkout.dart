import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOut extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout",style: GoogleFonts.imprima(),),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery Address",style: TextStyle(fontWeight: FontWeight.w200),),

            SizedBox(height: 10,),

            Row(
              children: [
                Image.asset("images/map.png"),
                SizedBox(width: 12,),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("25/3 Housing Estate",style: GoogleFonts.imprima(fontSize:16,fontWeight:FontWeight.bold),),
                          Text("Sylhet",style: GoogleFonts.imprima(fontSize:16,fontWeight:FontWeight.bold),),
                        ],
                      ),
                  
                      Text("Change",style: GoogleFonts.imprima(fontWeight:FontWeight.w200),)
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: 17,),

            Row(
              children: [
                Icon(Icons.watch_later_outlined,),
                SizedBox(width: 15,),
                Text("Delivered in next 7 days",style: GoogleFonts.imprima(fontSize:16,fontWeight:FontWeight.w400))
              ],
            ),

            SizedBox(height: 30,),
            Text("Payment Method",style: GoogleFonts.imprima(fontWeight:FontWeight.w200)),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/visa.png"),
                Image.asset("images/americanExpress.png"),
                Image.asset("images/mastercard.png"),
                Image.asset("images/paypal.png"),
                Image.asset("images/applepay.png"),
              ],
            ),

            SizedBox(height: 50,),

            Center(child: Text("Add Voucher")),

            SizedBox(height: 30,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Note : ",style: GoogleFonts.imprima(color:Colors.orange,fontWeight:FontWeight.bold),),
                Text(" Use your order id at the payment. Your Id \n #154619 if you forget to put your order id we \n can’t confirm the payment.",style: GoogleFonts.imprima(),)
              ],
            ),

            SizedBox(height: 50,),

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

            SizedBox(height: 60,),

            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),

                  padding: MaterialStateProperty.all(EdgeInsets.only(left:40,right: 40,top: 15,bottom: 15))
                ),
                onPressed: (){},
                child: Text("Pay Now",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            )
            


          ],
        ),
      ),
    );
  }
}