import 'package:brand_store/home.dart';
import 'package:brand_store/models/productModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Onboarding extends StatelessWidget {
  
  Onboarding({super.key,});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 465,
              width: 375,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
        
              child: Image.asset("images/onbording.png"),
            ),

            SizedBox(height: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find the",style: GoogleFonts.imprima(fontSize: 42,fontWeight: FontWeight.bold),),
                Text("Best Collections",style: GoogleFonts.imprima(fontSize: 42,fontWeight: FontWeight.bold))
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get your dream item easily with FashionHub",style: TextStyle(fontWeight: FontWeight.w200),),
                Text("and get other intersting offer",style: TextStyle(fontWeight: FontWeight.w200))
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50.0, vertical: 18.0)),
                  ),
                  
                  onPressed: () {
                    
                  },
                  child: Text("Sign Up",style: TextStyle(color: Colors.black),),

                ),
                OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50.0, vertical: 18.0)),
                    side: MaterialStatePropertyAll(BorderSide.none),
                    
                  ), 
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text("Sign In",style: TextStyle(color: Colors.white),),
                ),
              ],
            )

            


          ],
        ),
      ),
    );
  }
}