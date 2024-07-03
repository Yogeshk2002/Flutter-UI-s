import 'package:expnse_manager/addTransaction.dart';
import 'package:expnse_manager/createAccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 86,left: 40,right: 40),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 69.76,
                  height: 58.82,
                  child: Image.asset("lib/assets/images/image1.png")
                ),
              ),
        
              SizedBox(
                height: 50,
        
              ),
        
        
              Text("Login to your Account",style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.w700,color:Colors.black),),
        
              SizedBox(height: 20,),
        
                 Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 5,
                      //color: Colors.black,
                      offset: Offset(5,5),
                      color: Color.fromARGB(255, 143, 141, 141)
                    ),

                  ],
                ),
                 child: TextField(
                    
                      decoration: InputDecoration(
                   
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            //borderSide: BorderSide(color: Colors.black)
                        
                          ),
                          hintText: "Username"     
                          
                      ),
                      
                  ),
               ),
        
                  SizedBox(height: 20,),
        
                 Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 5,
                      //color: Colors.black,
                      offset: Offset(5,5),
                      color: Color.fromARGB(255, 143, 141, 141)
                    ),

                  ],
                ),
                 child: TextField(
                    
                      decoration: InputDecoration(
                   
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            //borderSide: BorderSide(color: Colors.black)
                        
                          ),
                          hintText: "Password"     
                          
                      ),
                      
                  ),
               ),
                  SizedBox(height: 20,),
        
                  Center(
                  child: Container(
                    width: 300,
                    // color: Colors.green,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Transaction()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)
                    ),
                      child: Text("Log in",style: GoogleFonts.poppins(fontSize:16,color:Colors.white),),
                    ),
                  ),
                ),
        
                SizedBox(
                  height: 260,
                ),
        
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Text("Dont't have an account?",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountCreate()));
                      }, child: Text("Sign up",style: TextStyle(color: Colors.green),))
                    ],
                  ),
                ),
        
        
                  
            ]
          )
        ),
      )

    );
  }
}