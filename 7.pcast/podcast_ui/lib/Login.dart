import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/MainScreen.dart';
import 'package:podcast_ui/RegistrationPage.dart';

void main() => runApp( LoginScreen());

class LoginScreen extends StatefulWidget {
  State createState() => _LoginAppState();
}

class _LoginAppState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            //width: 400,
            color: Color.fromARGB(255, 80, 70, 70),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              height: 750,
              width: 320,
              
            
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(blurRadius: 20,color: Colors.white,spreadRadius: 5)
                ]
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Container(
                      height: 72,
                      width: 186.88,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("lib/assets/icons/logo.png"), 
                          SizedBox(width: 20,),
                          Text("pcast",style: GoogleFonts.roboto(fontSize: 34,fontWeight:FontWeight.w900,color:Colors.white))
                        ],
                      ),
                
                    ),
                    SizedBox(
                      height: 30,
                    ),
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Episodic series of",style: GoogleFonts.roboto(fontSize: 20,fontWeight:FontWeight.w500,color:Colors.white)),
                        Text("digital audio.",style: GoogleFonts.roboto(fontSize: 20,fontWeight:FontWeight.w500,color:Colors.white))
                      ],
                    ),
            
                    SizedBox(height: 40,),
            
                    const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        
                        prefixIconColor: Color.fromARGB(255, 156, 150, 150),
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: "E-mail Address",
                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 250, 222, 222))),
                        
                      ),
                    ),
                    SizedBox(height: 15,),
                    const TextField(
                      

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIconColor: Color.fromARGB(255, 156, 150, 150),
                        
                        prefixIcon: Icon(Icons.key_outlined),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                        
                      ),
                    ),
            
                    SizedBox(height: 25,),
            
                    
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 17, 126, 215),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(blurRadius: 8,color: Color.fromARGB(255, 91, 122, 148),spreadRadius: 1.5)
                        ]
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> mainScreen() ));
                        },
                        child: Text("Login",style: GoogleFonts.roboto(fontSize:15,color:Colors.white),),
                      ),
                    ),
            
                    SizedBox(height: 8,),
            
                    Center(
                      child: Container(
                        child: TextButton(
                        onPressed: () {},
                        child: Text("Forget Password?",style: GoogleFonts.roboto(fontSize:15,color:Color.fromARGB(255, 121, 113, 113)),),
                      ),
                      ),
                    ),
            
                    SizedBox(height: 43,),
            
            
                     Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(213, 1, 72, 129),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Login with Facebook",style: GoogleFonts.roboto(fontSize:15,color:Colors.white),),
                      ),
                    ),
            
                    SizedBox(height: 20,),
                    
            
                     Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 190, 47, 47),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Resistration()));
                        },
                        child: Text("Register new account",style: GoogleFonts.roboto(fontSize:15,color:Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

